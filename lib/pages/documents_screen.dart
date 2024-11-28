import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:schoolclearance/pages/accomodation_faculty_screen.dart';
import 'package:schoolclearance/pages/deparemental_clearance_screen.dart';
import 'package:schoolclearance/pages/exams_and_records_screen.dart';
import 'package:schoolclearance/pages/hostel_screen.dart';
import 'package:schoolclearance/pages/library_fines_screen.dart';
import 'package:schoolclearance/pages/medical_screen.dart';
import 'package:schoolclearance/pages/student_accounts.dart';
import 'package:schoolclearance/pages/workshop_screen.dart';

// ignore: must_be_immutable
class DocumentsScreen extends StatelessWidget {
  DocumentsScreen({super.key});

  final List _sections = [
    "Library Fines",
    "Student Accounts",
    "Workshop",
    "Departmental Clearance",
    "Hostel",
    "Accomodation Faculty",
    "Medical",
    "Exams and Records",
  ];

  Map<String, VoidCallback> eachCardFunction = {
    "Library Fines": () {
      Get.to(() => LibraryFinesScreen());
    },
    "Student Accounts": () {
      Get.to(() => StudentAccounts());
    },
    "Workshop": () {
       Get.to(() => WorkshopScreen());
    },
    "Departmental Clearance": () {
       Get.to(() => DeparementalClearanceScreen());
    },
    "Hostel": () {
       Get.to(() => HostelScreen());
    },
    "Accomodation Faculty": () {
       Get.to(() => AccomodationFacultyScreen());
    },
    "Medical": () {
       Get.to(() => MedicalScreen());
    },
    "Exams and Records": () {
       Get.to(() => ExamsAndRecordsScreen());
    },
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          "Documents",
          style: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 10,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: _sections.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    decoration: BoxDecoration(
                      color: Colors.grey[900],
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: ListTile(
                      onTap: () {
                        if (eachCardFunction.containsKey(_sections[index])) {
                          eachCardFunction[_sections[index]]?.call();
                        }
                      },
                      leading: const Icon(
                        Icons.document_scanner_sharp,
                        color: Colors.white,
                      ),
                      title: Text(
                        _sections[index],
                        style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                          fontFamily: "Poppins",
                        ),
                      ),
                      trailing: const Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.white,
                        size: 15,
                      ),
                    ),
                  );
                },
              ),
            ),
            // ListTile(),
          ],
        ),
      ),
    );
  }
}
