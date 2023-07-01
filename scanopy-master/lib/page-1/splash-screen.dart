import 'dart:async';
import 'package:flutter/material.dart';
import 'package:myapp/page-1/page-2.dart';
import 'package:myapp/utils.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 5), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) => const HomeScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    double baseWidth = 360;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;

    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 1, 253, 240),
              Color.fromARGB(169, 1, 253, 240),
              Color.fromARGB(86, 1, 253, 240),
              Color.fromARGB(0, 1, 253, 240)
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
          color: Color(0xff3fd1db),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 120 * fem,
                    margin: EdgeInsets.fromLTRB(
                      1 * fem,
                      0,
                      2 * fem,
                      2 * fem,
                    ),
                    child: Image.asset('assets/page-1/images/logo.png'),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 20 * fem),
              child: Text(
                'SCANOPY',
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 32 * ffem,
                  fontWeight: FontWeight.w600,
                  color: const Color.fromARGB(255, 0, 0, 0),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
