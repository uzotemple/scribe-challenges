import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
// import 'package:image_picker/image_picker.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class MyApp1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Image Upload Widget Example'),
        ),
        body: ImageUploadWidget(),
      ),
    );
  }
}

class ImageUploadWidget extends StatefulWidget {
  @override
  _ImageUploadWidgetState createState() => _ImageUploadWidgetState();
}

class _ImageUploadWidgetState extends State<ImageUploadWidget> {
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
    return GestureDetector(
      onTap: () {
        _getImage();
      },
      child: _image == null
          ? Container(
              width: 400,
              height: 180,
              // decoration: BoxDecoration(
              //   image: AssetImage("images/Drag and drop.svg"),
              //   borderRadius: BorderRadius.circular(20),
              //   border: Border.all(
              //     color: Colors.black,
              //     width: 1,
              //     style: BorderStyle.solid,
              //   ),
              //   color: Colors.transparent,
              // ),

              child: SvgPicture.asset("images/Drag and drop.svg"),
              //
              // Icon(
              //   Icons.add_a_photo,
              //   size: 50,
              //   color: Colors.white,
              // ),
              )
          : Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.transparent,
                border: Border.all(
                  color: Color(0xFFE4E4E4),
                  width: 1,
                ),
              ),
              child: Image.file(
                _image!,
                fit: BoxFit.cover,
              ),
            ),
    );
  }
}
