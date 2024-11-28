import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:schoolclearance/admin/admin_bottom_navigation_system.dart';
import 'package:schoolclearance/res/custom_button.dart';

class StudentDocumentsScreen extends StatelessWidget {
  final String name;
  const StudentDocumentsScreen({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          "Student Documents",
          style: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 20,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: Get.height * 0.04),
            SizedBox(
              height: 55,
              child: Row(
                children: [
                  Container(
                    height: 55,
                    width: 55,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white, width: 2),
                      borderRadius: BorderRadius.circular(12),
                      image: const DecorationImage(
                        image: AssetImage("assets/images/stu3.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "ID Card Passport",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        "Expiry Date: 2024-12-45",
                        style: TextStyle(
                          fontSize: 13,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 25),
            ListTile(
              contentPadding: const EdgeInsets.symmetric(horizontal: 0),
              leading: Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const Icon(
                  Icons.account_circle_rounded,
                  color: Colors.black,
                ),
              ),
              title: Text(
                name,
                style: const TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(height: 10),
            ListTile(
              contentPadding: const EdgeInsets.symmetric(horizontal: 0),
              leading: Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const Icon(
                  Icons.email,
                  color: Colors.black,
                ),
              ),
              title: const Text(
                "Johnsmith@gmail.com",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(height: 10),
            ListTile(
              contentPadding: const EdgeInsets.symmetric(horizontal: 0),
              leading: Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const Icon(
                  Icons.phone,
                  color: Colors.black,
                ),
              ),
              title: const Text(
                "+234 816 444 9784",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(height: 45),
            const Text(
              "Applied Science",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            const Text(
              "Computer Science",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 15,
              ),
            ),
            const Text(
              "National Diploma",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 15,
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                CustomButton(
                  text: "Reject",
                  onTap: () {
                    Get.to(() => AdminBottomNavigationSystem());
                  },
                  bgColor: Colors.grey,
                  width: 120,
                ),
                const SizedBox(width: 10),
                CustomButton(
                  text: "Approve",
                  onTap: () {
                    Get.to(() => AdminBottomNavigationSystem());
                  },
                  width: 120,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
