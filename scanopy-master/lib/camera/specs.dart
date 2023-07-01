import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_translate/flutter_translate.dart';
import 'package:google_ml_kit/google_ml_kit.dart';
import 'displayscreen.dart';
import 'image_picker.dart';
import 'ocr_result_screen.dart';
import 'ocr_service.dart';

void main() async {
  var delegate = await LocalizationDelegate.create(
    fallbackLocale: 'en',
    supportedLocales: ['en', 'ml'],
  );

  final imagePath = await ImagePickerHelper
      .pickImage(); // Retrieve the image path using the image picker

  runApp(LocalizedApp(delegate,
      MyApp(imagePath: imagePath ?? ''))); // Pass the image path to MyApp
}

class MyApp extends StatelessWidget {
  final String imagePath;

  const MyApp({Key? key, required this.imagePath}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('en'),
        Locale('ml'),
      ],
      home: OCRResultScreen(
          imagePath: imagePath,
          ocrService: OCRService()), // Pass the image path to OCRResultScreen
    );
  }
}
