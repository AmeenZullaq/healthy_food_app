import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:healthy_food_app/core/utilis/constants/app_styles.dart';

class AuthTextFormField extends StatelessWidget {
  const AuthTextFormField({
    super.key,
    required this.hint,
    this.suffixIcon,
    this.controller,
    this.validator,
    this.keyboardType,
    this.obscureText,
  });

  final String hint;
  final Widget? suffixIcon;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final TextInputType? keyboardType;
  final bool? obscureText;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 42.h,
      child: TextFormField(
        obscureText: obscureText ?? false,
        keyboardType: keyboardType,
        controller: controller,
        validator: validator,
        cursorColor: const Color(0xFFD7DDDB),
        cursorWidth: 1,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(
            vertical: 12,
            horizontal: 12,
          ),
          hintText: hint,
          hintStyle: AppStyles.medium16Cabin,
          suffixIcon: suffixIcon,
          suffixIconConstraints: const BoxConstraints(
            minHeight: 16,
            minWidth: 15,
          ),
          fillColor: const Color(0xFFFAFFF8),
          filled: true,
          enabledBorder: AppStyles.border,
          focusedBorder: AppStyles.border,
          errorBorder: AppStyles.errorBorder,
          focusedErrorBorder: AppStyles.errorBorder,
        ),
      ),
    );
  }
}
