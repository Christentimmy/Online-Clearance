import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:schoolclearance/pages/home_screen.dart';
import 'package:schoolclearance/res/color.dart';

class BottomNavigationScreen extends StatelessWidget {
  BottomNavigationScreen({super.key});

  final RxInt _selectedIndex = 0.obs;

  final _pages = [
    HomeScreen(),
    Container(color: Colors.blue),
    Container(color: Colors.red),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Obx(() => _pages[_selectedIndex.value]),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 17, 17, 17),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Obx(
          () => BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            unselectedItemColor: Colors.grey,
            selectedItemColor: AppColors.buttonColor,
            elevation: 0,
            currentIndex: _selectedIndex.value,
            enableFeedback: false,
            onTap: (value) {
              _selectedIndex.value = value;
            },
            backgroundColor: const Color.fromARGB(255, 17, 17, 17),
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: "",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.document_scanner_rounded),
                label: "",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.account_circle_sharp),
                label: "",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
