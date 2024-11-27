import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
