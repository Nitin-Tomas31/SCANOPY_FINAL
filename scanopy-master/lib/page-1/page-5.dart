import 'package:flutter/material.dart';
import 'package:myapp/utils.dart';
import 'package:myapp/camera/startcamera.dart';
import 'package:myapp/camera/image_picker.dart';
import 'package:myapp/page-1/settings.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key});

  @override
  Widget build(BuildContext context) {
    double baseWidth = 360;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 139, 212, 207),
        title: Text(
          'SCANOPY',
          style: TextStyle(
            fontFamily: 'Montserrat',
            fontSize: 20 * ffem,
            fontWeight: FontWeight.w600,
            height: 1.2125 * ffem / fem,
            color: Color.fromARGB(255, 0, 0, 0),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          width: double.infinity,
          child: Container(
            padding: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 2 * fem),
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Color(0xffffffff),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 500),
                Container(
                  margin:
                      EdgeInsets.fromLTRB(0 * fem, 0 * fem, 2 * fem, 104 * fem),
                  child: Text(
                    'You dont have any files',
                    style: TextStyle(
                      fontFamily: 'Inter',
                      fontSize: 13 * ffem,
                      fontWeight: FontWeight.w300,
                      height: 1.2125 * ffem / fem,
                      color: const Color(0x7a000000),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(
                      143 * fem, 0 * fem, 173 * fem, 0 * fem),
                  width: double.infinity,
                  height: 25 * fem,
                ),
                const SizedBox(height: 106),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedLabelStyle: const TextStyle(
          color: Color.fromARGB(255, 0, 0, 0),
        ),
        backgroundColor: Color.fromARGB(255, 139, 212, 207),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.folder,
              color: Colors.black,
            ),
            label: 'My Files', // Empty label
          ),
          BottomNavigationBarItem(
            icon: CircleAvatar(
              backgroundColor: Colors.white,
              child: Icon(Icons.camera, color: Colors.black),
            ),
            label: 'Camera',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.settings,
              color: Colors.black,
            ),
            label: 'Settings',
          ),
        ],
        onTap: (index) {
          // Handle button tap events
          if (index == 0) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const ImagePickerScreen(),
              ),
            );
          } else if (index == 1) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const CameraPreviewWidget(),
              ),
            );
          } else if (index == 2) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Settings(),
              ),
            );
          }
        },
      ),
    );
  }
}

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch().copyWith(
            secondary:
                Color.fromARGB(255, 30, 141, 197)), // Set accentColor to black
      ),
      home: HomePage(),
    ),
  );
}
