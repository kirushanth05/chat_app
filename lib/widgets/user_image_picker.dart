import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class UserImagePicker extends StatefulWidget {
  const UserImagePicker({super.key, required this.onImagePicked});

  final void Function(File image) onImagePicked;

  @override
  State<UserImagePicker> createState() => _UserImagePickerState();
}

class _UserImagePickerState extends State<UserImagePicker> {
  File? pickedUserImage;

  void _pickImage() async {
    try {
      final pickedImageFile = await ImagePicker().pickImage(
        source: ImageSource.gallery,
      );

      if (pickedImageFile == null) return;

      setState(() {
        pickedUserImage = File(pickedImageFile.path);
      });

      widget.onImagePicked(pickedUserImage!);
    } catch (e) {
      print('error $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _pickImage,
      child: CircleAvatar(
        radius: 50,
        backgroundImage:
            pickedUserImage != null ? FileImage(pickedUserImage!) : null,
      ),
    );
  }
}