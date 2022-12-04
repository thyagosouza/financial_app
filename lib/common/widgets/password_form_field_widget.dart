// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:finance_app/common/widgets/custom_text_field_widget.dart';

import '../constants/app_colors.dart';

class PasswordFormFieldWidget extends StatefulWidget {
  final EdgeInsetsGeometry? padding;
  final String? hintText;
  final String labelText;
  final bool? obscureText;
  final TextEditingController? controller;
  final int? maxLength;
  final FormFieldValidator<String>? validator;
  final Widget? suffixIcon;

  const PasswordFormFieldWidget({
    Key? key,
    this.padding,
    this.hintText,
    required this.labelText,
    this.obscureText,
    this.controller,
    this.maxLength,
    this.validator,
    this.suffixIcon,
  }) : super(key: key);

  @override
  State<PasswordFormFieldWidget> createState() =>
      _PasswordFormFieldWidgetState();
}

bool isHidden = true;

class _PasswordFormFieldWidgetState extends State<PasswordFormFieldWidget> {
  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
      validator: widget.validator,
      obscureText: isHidden,
      labelText: widget.labelText,
      controller: widget.controller,
      padding: widget.padding,
      suffixIcon: InkWell(
        borderRadius: BorderRadius.circular(25),
        onTap: () {
          setState(() {
            isHidden = !isHidden;
          });
        },
        child: Icon(
          isHidden ? Icons.visibility : Icons.visibility_off,
          size: 20,
          color: AppColors.greenLight2,
        ),
      ),
    );
  }
}
