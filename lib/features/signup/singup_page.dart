// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:developer';

import 'package:flutter/material.dart';

import 'package:finance_app/common/widgets/multi_text_button_widget.dart';
import 'package:finance_app/common/widgets/primary_button_widget.dart';

import '../../common/constants/app_colors.dart';
import '../../common/constants/app_text_styles.dart';
import '../../common/widgets/custom_text_field_widget.dart';

class SingupPage extends StatelessWidget {
  const SingupPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          CustomTextFormField(
            labelText: 'Name',
            textCapitalization: TextCapitalization.words,
            textInputType: TextInputType.name,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(32, 17, 32, 4),
            child: PrimaryButtonWidget(
              text: 'Sign Up',
              onPressed: () => log('Sign Up'),
              sizeH: 48,
            ),
          ),
          MultiTextButtonWidget(
            children: [
              Text(
                'Already have account?  ',
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
    );
  }
}
