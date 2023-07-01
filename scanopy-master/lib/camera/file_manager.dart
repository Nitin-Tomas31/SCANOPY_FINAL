import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';
import 'dart:io';

class FileManager {
  static Future<void> saveTextAsFile(String text) async {
    final status = await Permission.storage.request();
    if (status.isGranted) {
      final directory = await getExternalStorageDirectory();
      final filePath = '${directory!.path}/translated_text.txt';
      final file = File(filePath);
      await file.writeAsString(text);
    } else {
      throw Exception('Storage permission not granted');
    }
  }
}
