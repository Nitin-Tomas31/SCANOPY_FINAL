import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:async';
import 'package:myapp/camera/displayscreen.dart';

class ImagePickerScreen extends StatefulWidget {
  const ImagePickerScreen({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _ImagePickerScreenState createState() => _ImagePickerScreenState();
}

class _ImagePickerScreenState extends State<ImagePickerScreen> {
  ImagePicker picker = ImagePicker();
  late File _imageFile = File('assets/page-1/images/imgicon.png');
  bool _imageSelected = false;

  Future<void> _pickImageFromGallery() async {
    // ignore: deprecated_member_use
    final pickedImage = await picker.getImage(source: ImageSource.gallery);

    if (pickedImage != null) {
      setState(() {
        _imageFile = File(pickedImage.path);
        _imageSelected = true;
      });

      // ignore: use_build_context_synchronously
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (_) => DisplayPictureScreen(imagePath: _imageFile.path),
        ),
      );
    } else {
      setState(() {
        _imageSelected = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 68, 6, 238),
        title: const Text('Image Picker'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            if (_imageSelected)
              Image.file(
                _imageFile,
                width: 200,
                height: 200,
              )
            else
              const Text(
                'No image selected',
                style: TextStyle(
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
              ),
            ElevatedButton(
              onPressed: _pickImageFromGallery,
              clipBehavior: Clip.antiAliasWithSaveLayer,
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 68, 6, 238),
              ),
              child: const Text('Pick Image from Gallery'),
            ),
          ],
        ),
      ),
    );
  }
}

class ImagePickerHelper {
  static Future<String?> pickImage() async {
    final picker = ImagePicker();
    final pickedFile = await picker.getImage(source: ImageSource.gallery);
    return pickedFile!.path;
  }
}
