

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:schoolclearance/res/color.dart';

class CustomButton extends StatelessWidget {
  final String text;
  IconData? icon;
  final VoidCallback onTap;
  CustomButton({
    super.key,
    this.icon,
    required this.text,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 53,
        width: Get.width,
        decoration: BoxDecoration(
          color: AppColors.buttonColor,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              text,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            icon != null ? Icon(icon, color: Colors.white) : const SizedBox(),
          ],
        ),
      ),
    );
  }
}
