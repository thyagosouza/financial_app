// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:developer';

import 'package:finance_app/common/utils/validator.dart';
import 'package:finance_app/common/widgets/password_form_field_widget.dart';
import 'package:flutter/material.dart';

import 'package:finance_app/common/widgets/multi_text_button_widget.dart';
import 'package:finance_app/common/widgets/primary_button_widget.dart';

import '../../common/constants/app_colors.dart';
import '../../common/constants/app_text_styles.dart';
import '../../common/utils/upper_case_text_input_formatter.dart';
import '../../common/widgets/custom_text_field_widget.dart';

class SingupPage extends StatefulWidget {
  const SingupPage({Key? key}) : super(key: key);

  @override
  State<SingupPage> createState() => _SingupPageState();
}

class _SingupPageState extends State<SingupPage> {
  final _formKey = GlobalKey<FormState>();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          children: [
            Container(
              width: double.infinity,
              child: Text(
                'Start Saving \n Your Money!',
                textAlign: TextAlign.center,
                style: AppTextStyles.onboarding
                    .copyWith(color: AppColors.greenLight2),
              ),
            ),
            Image.asset('assets/images/signup.png'),
            SizedBox(
              height: 10,
            ),
            Form(
              key: _formKey,
              child: Column(
                children: [
                  CustomTextFormField(
                    validator: Validator.validateName,
                    obscureText: false,
                    labelText: 'yourName',
                    inputFormatters: [
                      UpperCaseTextInputFormatter(),
                    ],
                    textCapitalization: TextCapitalization.words,
                    textInputType: TextInputType.name,
                  ),
                  CustomTextFormField(
                    validator: Validator.validateEmail,
                    obscureText: false,
                    labelText: 'your email',
                    textInputType: TextInputType.emailAddress,
                  ),
                  PasswordFormFieldWidget(
                    controller: _passwordController,
                    validator: Validator.validatePassword,
                    labelText: 'choose your password',
                    obscureText: true,
                    helperText:
                        'Must have at 8 characteres, 1 capital letter and 1 number',
                  ),
                  PasswordFormFieldWidget(
                    validator: (value) => Validator.validateConfirmPassword(
                        value, _passwordController.text),
                    labelText: 'confirm your password',
                    obscureText: true,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(32, 17, 32, 4),
              child: PrimaryButtonWidget(
                text: 'Sign Up',
                onPressed: () {
                  final valid = _formKey.currentState!.validate();
                  log(valid.toString());
                },
                sizeH: 48,
              ),
            ),
            MultiTextButtonWidget(
              children: [
                Text(
                  'Already Have Account?  ',
                  style: AppTextStyles.smallText.copyWith(
                    color: AppColors.greyDark,
                  ),
                ),
                Text(
                  'Log In',
                  style: AppTextStyles.smallText.copyWith(
                    color: AppColors.greenLight1,
                  ),
                ),
              ],
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
