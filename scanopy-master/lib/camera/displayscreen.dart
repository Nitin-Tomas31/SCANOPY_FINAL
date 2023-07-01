import 'package:flutter/material.dart';
import 'dart:io';
// ignore: depend_on_referenced_packages
import 'package:path_provider/path_provider.dart';
import 'ocr_service.dart';
import 'ocr_result_screen.dart'; // Import the OCR result screen

class DisplayPictureScreen extends StatefulWidget {
  final String imagePath;

  const DisplayPictureScreen({Key? key, required this.imagePath})
      : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _DisplayPictureScreenState createState() => _DisplayPictureScreenState();
}

class _DisplayPictureScreenState extends State<DisplayPictureScreen> {
  final OCRService _ocrService = OCRService();

  @override
  void initState() {
    super.initState();
    _scanImage();
  }

  Future<void> _scanImage() async {
    final imageFile = File(widget.imagePath);
    final tempDir = await getTemporaryDirectory();
    final tempImagePath = '${tempDir.path}/temp_image.jpg';

    // Copy the image to a temporary location to avoid permission issues
    await imageFile.copy(tempImagePath);

    setState(() {
    });
  }

  @override
  void dispose() {
    _ocrService.dispose(); // Make sure to dispose the OCR service
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 68, 6, 238),
        title: const Text('PREVIEW'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.file(
                File(widget.imagePath),
                width: screenWidth,
                height: screenHeight * 0.8,
                fit: BoxFit.contain,
              ),
              ElevatedButton(
                onPressed: () {
                  _navigateToOCRScreen(); // Navigate to OCR screen
                },
                child: const Text('Scan'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _navigateToOCRScreen() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => OCRResultScreen(
          imagePath: widget.imagePath,
          ocrService: _ocrService,
        ),
      ),
    );
  }
}
