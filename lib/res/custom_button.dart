import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:schoolclearance/res/color.dart';

// ignore: must_be_immutable
class CustomButton extends StatelessWidget {
  final String text;
  IconData? icon;
  final VoidCallback onTap;
  double? width;
  Color? bgColor;
  CustomButton({
    super.key,
    this.icon,
    required this.text,
    required this.onTap,
    this.bgColor,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 53,
        width: width ?? Get.width,
        decoration: BoxDecoration(
          color: bgColor ?? AppColors.buttonColor,
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
