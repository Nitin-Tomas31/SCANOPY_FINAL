import 'dart:io';
import 'package:google_ml_kit/google_ml_kit.dart';

class OCRService {
  Future<String> scanImage(String imagePath) async {
    final inputImage = InputImage.fromFile(File(imagePath));
    final textRecognizer = GoogleMlKit.vision.textRecognizer();
    final RecognizedText recognisedText =
        await textRecognizer.processImage(inputImage);

    String result = "";
    for (TextBlock block in recognisedText.blocks) {
      for (TextLine line in block.lines) {
        for (TextElement element in line.elements) {
          result += "${element.text} ";
        }
        result += "\n";
      }
      result += "\n";
    }

    textRecognizer.close();
    return result;
  }

  void dispose() {
    // Cleanup resources
  }
}
