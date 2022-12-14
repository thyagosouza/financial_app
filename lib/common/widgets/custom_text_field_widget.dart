// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../constants/app_colors.dart';
import '../constants/app_text_styles.dart';

class CustomTextFormField extends StatefulWidget {
  final EdgeInsetsGeometry? padding;
  final String? hintText;
  final String labelText;
  final bool? obscureText;
  final TextCapitalization? textCapitalization;
  final TextEditingController? controller;
  final TextInputType? textInputType;
  final int? maxLength;
  final TextInputAction? textInputAction;
  final Widget? suffixIcon;
  final List<TextInputFormatter>? inputFormatters;
  final FormFieldValidator<String>? validator;
  final String? helperText;

  const CustomTextFormField({
    Key? key,
    this.padding,
    this.hintText,
    required this.labelText,
    this.obscureText,
    this.textCapitalization,
    this.controller,
    this.textInputType,
    this.maxLength,
    this.textInputAction,
    this.suffixIcon,
    this.inputFormatters,
    this.validator,
    this.helperText,
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

  String? _helperText;

  @override
  void initState() {
    super.initState();
    _helperText = widget.helperText;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: widget.padding ??
          EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
      child: TextFormField(
        onChanged: (value) {
          if (value.isNotEmpty) {
            setState(() {
              _helperText = null;
            });
          } else if (value.isEmpty) {
            _helperText = widget.helperText;
          }
          ;
        },
        validator: widget.validator,
        textInputAction: widget.textInputAction,
        controller: widget.controller,
        keyboardType: widget.textInputType,
        maxLength: widget.maxLength,
        textCapitalization:
            widget.textCapitalization ?? TextCapitalization.none,
        obscureText: widget.obscureText ?? false,
        inputFormatters: widget.inputFormatters,
        decoration: InputDecoration(
          floatingLabelBehavior: FloatingLabelBehavior.always,
          helperText: _helperText,
          helperMaxLines: 3,
          errorMaxLines: 3,
          hintText: widget.hintText,
          suffixIcon: widget.suffixIcon,
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
