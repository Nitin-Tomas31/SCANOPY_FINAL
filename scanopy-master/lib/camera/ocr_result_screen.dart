import 'package:flutter/material.dart';
import 'package:translator/translator.dart';
import 'ocr_service.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:file_picker/file_picker.dart';
import 'package:pdf/widgets.dart' as pdfWidgets;
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pdf;
import 'dart:io';

class OCRResultScreen extends StatefulWidget {
  final String imagePath;
  final OCRService ocrService;

  const OCRResultScreen({
    Key? key,
    required this.imagePath,
    required this.ocrService,
  }) : super(key: key);

  @override
  _OCRResultScreenState createState() => _OCRResultScreenState();
}

class _OCRResultScreenState extends State<OCRResultScreen> {
  String? _scannedText;
  String? _translatedText;

  @override
  void initState() {
    super.initState();
    _performOCR();
  }

  Future<void> _performOCR() async {
    final scannedText = await widget.ocrService.scanImage(widget.imagePath);
    setState(() {
      _scannedText = scannedText;
      _translateText(); // Call translation method after scanning
    });
  }

  Future<void> _translateText() async {
    if (_scannedText != null) {
      final translator = GoogleTranslator();
      final translation =
          await translator.translate(_scannedText!, from: 'en', to: 'ml');
      setState(() {
        _translatedText = translation.text;
      });
    }
  }

  Future<void> _saveAndDownloadText() async {
    if (_translatedText != null) {
      final status = await Permission.storage.request();
      if (status.isGranted) {
        final directory = await FilePicker.platform.getDirectoryPath();
        if (directory != null) {
          final filePath = '$directory/output.pdf';
          final file = File(filePath);
          final pdfDocument = pdfWidgets.Document();
          pdfDocument.addPage(
            pdfWidgets.Page(
              build: (context) => pdfWidgets.Center(
                child: pdfWidgets.Text(
                  _translatedText!,
                  style: pdf.TextStyle(fontSize: 20),
                ),
              ),
            ),
          );
          await file.writeAsBytes(await pdfDocument.save());
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: const Text('File Saved'),
                content: Text('The translated text has been saved as a PDF file.'),
                actions: [
                  TextButton(
                    child: const Text('OK'),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                ],
              );
            },
          );
        }
      } else {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: const Text('Permission Required'),
              content: Text('Please grant storage permission to save the file.'),
              actions: [
                TextButton(
                  child: Text('OK'),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ],
            );
          },
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 68, 6, 238),
        title: const Text('Translated Text'),
        actions: [
          IconButton(
            icon: Icon(Icons.download),
            onPressed: _saveAndDownloadText,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  _translatedText ?? '',
                  style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                  maxLines: 1000,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  softWrap: true,
                  textWidthBasis: TextWidthBasis.longestLine,
                  textScaleFactor: 1.0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
