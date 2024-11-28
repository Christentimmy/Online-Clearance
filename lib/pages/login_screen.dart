import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:schoolclearance/pages/bottom_navigation_screen.dart';
import 'package:schoolclearance/res/color.dart';
import 'package:schoolclearance/res/custom_button.dart';
import 'package:schoolclearance/res/custom_textfield.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final _fullNameController = TextEditingController();
  final RxBool _isPasswordVisible = false.obs;
  final RxBool _isValue = false.obs;
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 20,
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: Get.height * 0.2),
              const Text(
                "Hi, welcome back",
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: Get.height * 0.005),
              Text(
                "Please enter your details to continue.",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white.withOpacity(0.5),
                ),
              ),
              SizedBox(height: Get.height * 0.05),
              Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Matric Number",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white.withOpacity(0.75),
                      ),
                    ),
                    const SizedBox(height: 5),
                    CustomTextField(
                      controller: _fullNameController,
                      hintText: "Enter valid matric number",
                    ),
                    const SizedBox(height: 15),
                    Text(
                      "Password",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white.withOpacity(0.75),
                      ),
                    ),
                    const SizedBox(height: 5),
                    Obx(
                      () => CustomTextField(
                        controller: _fullNameController,
                        hintText: "Enter your password",
                        isObscure: _isPasswordVisible.value,
                        suffixIcon: _isPasswordVisible.value
                            ? Icons.visibility
                            : Icons.visibility_off,
                        onSuffixTap: () {
                          _isPasswordVisible.value = !_isPasswordVisible.value;
                        },
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: Get.height * 0.03),
              const Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "Forgot Password?",
                    style: TextStyle(
                      fontSize: 14,
                      color: AppColors.buttonColor,
                    ),
                  ),
                ],
              ),
              SizedBox(height: Get.height * 0.03),
              Row(
                children: [
                  Obx(
                    () => Checkbox(
                      activeColor: AppColors.buttonColor,
                      side: const BorderSide(color: Colors.white),
                      visualDensity: VisualDensity.compact,
                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      value: _isValue.value,
                      onChanged: (value) {
                        _isValue.value = value!;
                      },
                    ),
                  ),
                  Text(
                    "Admin",
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.5),
                    ),
                  )
                ],
              ),
              SizedBox(height: Get.height * 0.03),
              CustomButton(
                text: "Log in",
                onTap: () {
                  Get.to(() => BottomNavigationScreen());
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
