import 'package:flutter/material.dart';

class AdminStudentsDocumentScreen extends StatelessWidget {
  AdminStudentsDocumentScreen({super.key});

  final List _students = [
    "Christen Timmy",
    "Ayomide Bamidele",
    "Grey Idowu",
    "Sam larry",
    "Ekundayo Ope",
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
          "Documents Verification",
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
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: _students.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: const Icon(
                      Icons.document_scanner_outlined,
                      color: Colors.grey,
                    ),
                    title: Text(
                      _students[index],
                      style: const TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    trailing: const Icon(Icons.arrow_forward_ios, color: Colors.grey),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
