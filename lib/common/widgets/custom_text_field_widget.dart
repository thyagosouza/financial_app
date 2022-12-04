// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../constants/app_colors.dart';
import '../constants/app_text_styles.dart';

class CustomTextFormField extends StatefulWidget {
  final EdgeInsetsGeometry? padding;
  final String? hintText;
  final String labelText;
  final bool? isObscure;
  final TextCapitalization? textCapitalization;
  final TextEditingController? controller;
  final TextInputType? textInputType;
  final int? maxLength;
  final TextInputAction? textInputAction;
  final Widget? sufixIcon;

  const CustomTextFormField({
    Key? key,
    this.padding,
    this.hintText,
    required this.labelText,
    this.isObscure,
    this.textCapitalization,
    this.controller,
    this.textInputType,
    this.maxLength,
    this.textInputAction,
    this.sufixIcon,
  }) : super(key: key);

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  final defaultBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(10.0),
    borderSide: BorderSide(
      color: AppColors.greenLight2,
    ),
  );
  bool isObscure = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: widget.padding ??
          EdgeInsets.symmetric(horizontal: 24.0, vertical: 6.0),
      child: TextFormField(
        textInputAction: widget.textInputAction,
        controller: widget.controller,
        keyboardType: widget.textInputType,
        maxLength: widget.maxLength,
        textCapitalization:
            widget.textCapitalization ?? TextCapitalization.none,
        obscureText: isObscure,
        decoration: InputDecoration(
          floatingLabelBehavior: FloatingLabelBehavior.always,
          hintText: widget.hintText,
          suffixIcon: widget.isObscure == true
              ? InkWell(
                  borderRadius: BorderRadius.circular(25),
                  onTap: () {
                    setState(() {
                      isObscure = !isObscure;
                    });
                  },
                  child: Icon(
                    isObscure ? Icons.visibility : Icons.visibility_off,
                    size: 20,
                    color: AppColors.greenLight2,
                  ),
                )
              : SizedBox(),
          focusedBorder: defaultBorder.copyWith(),
          errorBorder: defaultBorder.copyWith(
            borderSide: BorderSide(
              color: Colors.red,
            ),
          ),
          focusedErrorBorder: defaultBorder.copyWith(
            borderSide: BorderSide(
              color: Colors.red,
            ),
          ),
          enabledBorder: defaultBorder.copyWith(),
          disabledBorder: defaultBorder.copyWith(),
          labelText: widget.labelText.toUpperCase(),
          labelStyle: AppTextStyles.inputLabelText.copyWith(
            color: AppColors.greyDark2,
          ),
        ),
      ),
    );
  }
}
