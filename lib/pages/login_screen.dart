import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:schoolclearance/pages/bottom_navigation_screen.dart';
import 'package:schoolclearance/pages/home_screen.dart';
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
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size(Get.width, 150),
        child: Container(
          height: 150,
          padding: const EdgeInsets.only(top: 45),
          color: AppColors.textFormFieldBgColor,
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Leading widget
                GestureDetector(
                  onTap: () => Get.back(),
                  child: Container(
                    height: 44,
                    width: 44,
                    alignment: Alignment.center,
                    margin: const EdgeInsets.symmetric(
                      horizontal: 17,
                      vertical: 10,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: const Color(0xffFBFBFB),
                    ),
                    child: const Icon(
                      Icons.arrow_back_ios,
                      size: 14,
                      color: Colors.black,
                    ),
                  ),
                ),
                // Title

                // Actions widget
              ],
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 20,
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: Get.height * 0.05),
              const Text(
                "Hi, welcome back",
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: Get.height * 0.005),
              Text(
                "Please enter your details to continue.",
                style: TextStyle(
                  fontSize: 16,
                  color: const Color(0xff000000).withOpacity(0.5),
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
                        color: const Color(0xff000000).withOpacity(0.75),
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
                        color: const Color(0xff000000).withOpacity(0.75),
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
                      color: const Color(0xff000000).withOpacity(0.5),
                    ),
                  )
                ],
              ),
              SizedBox(height: Get.height * 0.03),
              CustomButton(
                text: "Log in",
                onTap: () {
                  Get.to(()=> BottomNavigationScreen());
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
