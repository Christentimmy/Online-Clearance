import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:schoolclearance/res/color.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final _sectionController = Get.put(SectionController());

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
              const Text(
                "Clearance Status",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 5),
              const Text(
                "Not Cleared",
                style: TextStyle(
                  fontSize: 19,
                  fontWeight: FontWeight.bold,
                  color: Colors.red,
                ),
              ),
              const SizedBox(height: 30),
              const CustomLineWidget(title: "First Name", text: "Christen"),
              const CustomLineWidget(title: "Late Name", text: "Makinde"),
              const CustomLineWidget(title: "Sex", text: "Male"),
              const CustomLineWidget(
                title: "Phone No",
                text: "+234-816-444-9784",
              ),
              const CustomLineWidget(
                title: "Matric No",
                text: "HC20220204057",
              ),
              const CustomLineWidget(
                title: "Programme",
                text: "Computer Science",
              ),
              const CustomLineWidget(
                title: "Faculty",
                text: "Applied Science",
              ),
              const SizedBox(height: 10),
              const Text(
                "Section Approved",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              Obx(
                () => Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    children: [
                      Checkbox(
                        value: _sectionController.isLibraryFines.value,
                        visualDensity: VisualDensity.compact,
                        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        activeColor: AppColors.buttonColor,
                        onChanged: (value) {
                          _sectionController.isLibraryFines.value = value!;
                        },
                      ),
                      Text(
                        "Library Fines",
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.9),
                        ),
                      ),
                      const Spacer(),
                      Checkbox(
                        value: _sectionController.isStudentAccounts.value,
                        visualDensity: VisualDensity.compact,
                        activeColor: AppColors.buttonColor,
                        onChanged: (value) {
                          _sectionController.isStudentAccounts.value = value!;
                        },
                      ),
                      Text(
                        "Student Accounts",
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.9),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Obx(
                () => Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    children: [
                      Checkbox(
                        value: _sectionController.isWorkShop.value,
                        visualDensity: VisualDensity.compact,
                        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        activeColor: AppColors.buttonColor,
                        onChanged: (value) {
                          _sectionController.isWorkShop.value = value!;
                        },
                      ),
                      Text(
                        "Workshop",
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.9),
                        ),
                      ),
                      const Spacer(),
                      Checkbox(
                        value: _sectionController.isDepartmentalClearance.value,
                        visualDensity: VisualDensity.compact,
                        activeColor: AppColors.buttonColor,
                        onChanged: (value) {
                          _sectionController.isDepartmentalClearance.value =
                              value!;
                        },
                      ),
                      Text(
                        "Departmental Clearance",
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.9),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Obx(
                () => Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    children: [
                      Checkbox(
                        value: _sectionController.isHotelAccomodation.value,
                        visualDensity: VisualDensity.compact,
                        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        activeColor: AppColors.buttonColor,
                        onChanged: (value) {
                          _sectionController.isHotelAccomodation.value = value!;
                        },
                      ),
                      Text(
                        "Hostel Accomodation",
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.9),
                        ),
                      ),
                      const Spacer(),
                      Checkbox(
                        value: _sectionController.isFaculty.value,
                        visualDensity: VisualDensity.compact,
                        activeColor: AppColors.buttonColor,
                        onChanged: (value) {
                          _sectionController.isFaculty.value = value!;
                        },
                      ),
                      Text(
                        "Faculty",
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.9),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Obx(
                () => Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    children: [
                      Checkbox(
                        value: _sectionController.isExamAndRecords.value,
                        visualDensity: VisualDensity.compact,
                        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        activeColor: AppColors.buttonColor,
                        onChanged: (value) {
                          _sectionController.isExamAndRecords.value = value!;
                        },
                      ),
                      Text(
                        "Exams and Records",
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.9),
                        ),
                      ),
                      const Spacer(),
                      Checkbox(
                        value: _sectionController.isMedicals.value,
                        visualDensity: VisualDensity.compact,
                        activeColor: AppColors.buttonColor,
                        onChanged: (value) {
                          _sectionController.isMedicals.value = value!;
                        },
                      ),
                      Text(
                        "Medical",
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.9),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Obx(
                () => Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    children: [
                      Checkbox(
                        value: _sectionController.isStudentAffairs.value,
                        visualDensity: VisualDensity.compact,
                        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        activeColor: AppColors.buttonColor,
                        onChanged: (value) {
                          _sectionController.isStudentAffairs.value = value!;
                        },
                      ),
                      Text(
                        "Student Affairs",
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.9),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 15),
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

class SectionController extends GetxController {
  RxBool isLibraryFines = true.obs;
  RxBool isDepartmentalClearance = false.obs;
  RxBool isMedicals = false.obs;
  RxBool isHotelAccomodation = true.obs;
  RxBool isExamAndRecords = false.obs;
  RxBool isStudentAccounts = true.obs;
  RxBool isStudentAffairs = false.obs;
  RxBool isWorkShop = true.obs;
  RxBool isFaculty = false.obs;
}
