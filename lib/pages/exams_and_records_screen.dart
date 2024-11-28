
import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:schoolclearance/res/color.dart';
import 'package:schoolclearance/res/custom_button.dart';
import 'package:schoolclearance/utils/pick_image.dart';

class ExamsAndRecordsScreen extends StatefulWidget {
  const ExamsAndRecordsScreen({super.key});

  @override
  State<ExamsAndRecordsScreen> createState() => _ExamsAndRecordsScreenState();
}

class _ExamsAndRecordsScreenState extends State<ExamsAndRecordsScreen> {
  final List<Uint8List?> _images = [];
  // List to hold picked images
  Future<void> _takeImage(int index) async {
    final im = await selectImage(ImageSource.gallery);
    if (im != null) {
      setState(() {
        if (index < _images.length) {
          _images[index] = im;
        } else {
          _images.add(im);
        }
      });
    }
  }

  void _addImageContainer() {
    setState(() {
      _images.add(null);
    });
  }

  void _removeImage(int index) {
    setState(() {
      _images.removeAt(index);
    });
  }

  @override
  void initState() {
    super.initState();
    _images.add(null);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          "Exams and Records",
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
            SizedBox(height: Get.height * 0.03),
            gridLike(),
            const SizedBox(height: 45),
            CustomButton(
              text: "Add Image",
              onTap: () {
                _addImageContainer();
              },
            ),
            const SizedBox(height: 10),
            CustomButton(
              text: "Upload",
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }

  Expanded gridLike() {
    return Expanded(
      child: GridView.builder(
        itemCount: _images.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          childAspectRatio: 0.8,
          mainAxisSpacing: 8.0,
          crossAxisSpacing: 10.0,
        ),
        itemBuilder: (context, index) {
          return SizedBox(
            height: 205,
            width: 210,
            child: Stack(
              children: [
                Container(
                  height: 200,
                  width: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      width: 2,
                      color: AppColors.buttonColor,
                    ),
                    image: _images[index] != null
                        ? DecorationImage(
                            image: MemoryImage(_images[index]!),
                          )
                        : null,
                  ),
                ),
                Center(
                  child: GestureDetector(
                    onTap: () {
                      _takeImage(index);
                    },
                    child: const CircleAvatar(
                      radius: 20,
                      child: Icon(Icons.camera_alt, size: 18),
                    ),
                  ),
                ),
                Positioned(
                  top: 0,
                  right: 0,
                  child: GestureDetector(
                    onTap: (){
                      _removeImage(index);
                    },
                    child: const CircleAvatar(
                      radius: 12,
                      backgroundColor: Colors.red,
                      child: Icon(
                        Icons.cancel,
                        color: Colors.white,
                        size: 15,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
