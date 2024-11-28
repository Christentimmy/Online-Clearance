import 'dart:typed_data';
import 'package:image_picker/image_picker.dart';

Future<Uint8List?> selectImage(ImageSource source)async{
  XFile? image = await ImagePicker().pickImage(source: source);
  if (image != null) {
    return image.readAsBytes();
  }
  return null;
}