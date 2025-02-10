
import 'package:flutter/material.dart';

import '../core/utils/app_color.dart';
import '../core/utils/app_styles.dart';

class CustomTextFormField extends StatelessWidget {
  final String? labelText;
  final String? hintText;
  final IconData? prefixIcon;
  final IconData? suffixIcon;
  final bool obscureText;
  final String? Function(String?)? validator;
  final TextEditingController? controller;
  final void Function(String)? onChanged;

  const CustomTextFormField({
    super.key,
    this.labelText,
    this.hintText,
    this.prefixIcon,
    this.suffixIcon,
    this.obscureText = false,
    this.validator,
    this.controller,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: obscureText,
      decoration: InputDecoration(
        fillColor: AppColors.backgroundLight,
        filled: true,
        labelText: labelText,
        hintText: hintText,
        hintStyle: AppStyles.regular16(context).copyWith(
          color: AppColors.grey,
        ),
        contentPadding: EdgeInsets.all(20),
        prefixIcon: prefixIcon != null ? Icon(prefixIcon) : null,
        suffixIcon: suffixIcon != null ? Icon(suffixIcon) : null,
        border: _buildBorderStyle(),
        enabledBorder: _buildBorderStyle(),
        focusedBorder: _buildBorderStyle(),
      ),
      validator: validator,
      onChanged: onChanged,
    );
  }

  OutlineInputBorder _buildBorderStyle() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(12.0),
      borderSide: BorderSide(
        color: AppColors.backgroundLight,
      ),
    );
  }
}
