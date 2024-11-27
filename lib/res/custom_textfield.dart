


import 'package:flutter/material.dart';
import 'package:schoolclearance/res/color.dart';

// ignore: must_be_immutable
class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  IconData? prefixIcon;
  IconData? suffixIcon;
  VoidCallback? onSuffixTap;
  bool? isObscure;
  CustomTextField({
    super.key,
    required this.controller,
    this.prefixIcon,
    this.suffixIcon,
    this.onSuffixTap,
    this.isObscure,
    required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: AppColors.textFormFieldBgColor,
      ),
      child: TextFormField(
        obscureText: isObscure ?? false,
        cursorColor: AppColors.buttonColor,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(
            fontSize: 16,
            color: const Color(0xff000000).withOpacity(0.25),
          ),
          prefixIcon: prefixIcon == null
              ? null
              : Icon(prefixIcon, color: const Color(0xff36534F)),
          suffixIcon: IconButton(
            onPressed: onSuffixTap,
            icon: Icon(suffixIcon, size: 20, color: const Color(0xff36534F)),
          ),
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide.none,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(
              width: 1,
              color: AppColors.buttonColor,
            ),
          ),
        ),
      ),
    );
  }
}
