import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImageUploadAvatar extends StatefulWidget {
  @override
  _ImageUploadAvatarState createState() => _ImageUploadAvatarState();
}

class _ImageUploadAvatarState extends State<ImageUploadAvatar> {
  File? _image;

  Future<void> _getImage() async {
    final ImagePicker _picker = ImagePicker();
    final XFile? pickedImage =
        await _picker.pickImage(source: ImageSource.gallery);
    if (pickedImage != null) {
      setState(() {
        _image = File(pickedImage.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: () {
            _getImage();
          },
          child: CircleAvatar(
            radius: 40, // Adjust the radius as needed
            backgroundColor: Color(0xFFEBEBEB), // Background color of the avatar
            child: _image == null
                ? Icon(
                    Icons.add_a_photo,
                    size: 40,
                    color: Colors.white,
                  )
                : ClipOval(
                    child: Image.file(
                      _image!,
                      width: 120, // Adjust the width of the image inside the avatar
                      height: 120, // Adjust the height of the image inside the avatar
                      fit: BoxFit.cover,
                    ),
                  ),
          ),
        ),
      ],
    );
  }
}
