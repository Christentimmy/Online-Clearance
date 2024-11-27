import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:schoolclearance/res/color.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final RxList _sections = [
    ["Library Fines", true],
    ["Student Accounts", false],
    ["Workshop", false],
    ["Departmental Clearance", true],
    ["Hostel", true],
    ["Accomodation Faculty", false],
    ["Medical", true],
    ["Exams and Records ", false],
  ].obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          "Dashboard",
          style: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 10),
              const Center(
                child: CircleAvatar(
                  radius: 49,
                  backgroundColor: AppColors.buttonColor,
                  child: CircleAvatar(
                    radius: 47,
                    backgroundImage: AssetImage("assets/images/avater.png"),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              const Center(
                child: Text(
                  "Clearance Status",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontFamily: 'Poppins',
                  ),
                ),
              ),
              const SizedBox(height: 10),
              const Center(
                child: Text(
                  'Not Cleared',
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              const SizedBox(height: 40),
              const Text(
                "Section Approved",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 20),
              SizedBox(
                height: 450,
                child: GridView.builder(
                  itemCount: _sections.length,
                  gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 150, // Max width per item
                    mainAxisSpacing: 10, // Vertical spacing
                    crossAxisSpacing: 10, // Horizontal spacing
                    childAspectRatio:
                        5, // Adjust to limit height; width-to-height ratio
                  ),
                  itemBuilder: (context, index) {
                    return Container(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      alignment: Alignment.centerLeft,
                      decoration: BoxDecoration(
                        color: Colors.grey[900],
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Row(
                        children: [
                          Checkbox(
                            value: _sections[index][1],
                            visualDensity: VisualDensity.compact,
                            materialTapTargetSize:
                                MaterialTapTargetSize.shrinkWrap,
                            activeColor: AppColors.buttonColor,
                            onChanged: (value) {},
                          ),
                          Expanded(
                            child: Text(
                              _sections[index][0],
                              style: TextStyle(
                                color: Colors.white.withOpacity(0.9),
                                fontSize: 12,
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomLineWidget extends StatelessWidget {
  final String title;
  final String text;
  const CustomLineWidget({
    super.key,
    required this.title,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: TextStyle(
                color: Colors.white.withOpacity(0.85),
              ),
            ),
            Text(
              text,
              style: TextStyle(
                color: Colors.white.withOpacity(0.85),
              ),
            ),
          ],
        ),
        const Divider(),
        const SizedBox(height: 15),
      ],
    );
  }
}
