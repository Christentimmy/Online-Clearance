import 'package:flutter/material.dart';
import 'package:schoolclearance/pages/home_screen.dart';
import 'package:schoolclearance/res/color.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          "Profile",
          style: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10),
              Center(
                child: CircleAvatar(
                  radius: 49,
                  backgroundColor: AppColors.buttonColor,
                  child: CircleAvatar(
                    radius: 47,
                    backgroundImage: AssetImage("assets/images/avater.png"),
                  ),
                ),
              ),
              SizedBox(height: 30),
              CustomLineWidget(title: "First Name", text: "Christen"),
              CustomLineWidget(title: "Late Name", text: "Makinde"),
              CustomLineWidget(title: "Sex", text: "Male"),
              CustomLineWidget(
                title: "Phone No",
                text: "+234-816-444-9784",
              ),
              CustomLineWidget(
                title: "Matric No",
                text: "HC20220204057",
              ),
              CustomLineWidget(
                title: "Programme",
                text: "Computer Science",
              ),
              CustomLineWidget(
                title: "Faculty",
                text: "Applied Science",
              ),
              SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
