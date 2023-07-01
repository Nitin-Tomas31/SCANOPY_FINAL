import 'package:flutter/material.dart';
import 'package:myapp/page-1/page-3.dart';
import 'package:myapp/utils.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  _HomeScreen createState() => _HomeScreen();
}

class _HomeScreen extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 360;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return SizedBox(
      width: double.infinity,
      child: Container(
        // page2upJ (21:6)
        width: double.infinity,
        height: 800 * fem,
        decoration: const BoxDecoration(
          color: Color(0xffffffff),
        ),
        child: Stack(
          children: [
            Positioned(
              // signal3fc (21:7)
              left: 155 * fem,
              top: 487 * fem,
              child: SizedBox(
                width: 25 * fem,
                height: 25 * fem,
              ),
            ),
            Positioned(
              // shapePUa (23:26)
              left: 0 * fem,
              top: 0 * fem,
              child: Align(
                child: SizedBox(
                  width: 304 * fem,
                  height: 259 * fem,
                  child: Image.asset(
                    'assets/page-1/images/shape.png',
                    width: 304 * fem,
                    height: 259 * fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // undrawresumefolderree0bi11nn (23:19)
              left: 90 * fem,
              top: 265 * fem,
              child: Align(
                child: SizedBox(
                  width: 185.27 * fem,
                  height: 170 * fem,
                  child: Image.asset(
                    'assets/page-1/images/undrawresumefolderree0bi-1.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Positioned(
              // saygoodbyetopaperdocumentsutA (23:20)
              left: 65 * fem,
              top: 523 * fem,
              child: Align(
                child: SizedBox(
                  width: 293 * fem,
                  height: 22 * fem,
                  child: Text(
                    'Say goodbye to paper documents',
                    style: SafeGoogleFont(
                      'Inter',
                      decoration: TextDecoration.none,
                      fontSize: 18 * ffem,
                      fontWeight: FontWeight.w600,
                      height: 1.2125 * ffem / fem,
                      color: const Color(0xff000000),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // convenientscansaveshareinminut (23:21)
              left: 44.5 * fem,
              top: 581 * fem,
              child: Align(
                child: SizedBox(
                  width: 281 * fem,
                  height: 37 * fem,
                  child: Text(
                    'Convenient scan,save,share in minutes, \nscan anywhere with ease',
                    textAlign: TextAlign.center,
                    style: SafeGoogleFont(
                      'Inter',
                      decoration: TextDecoration.none,
                      fontSize: 15 * ffem,
                      fontWeight: FontWeight.w300,
                      height: 1.2125 * ffem / fem,
                      color: const Color(0x7a000000),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // buttonzYE (23:28)
              left: 115 * fem,
              top: 667 * fem,
              child: Container(
                width: 130 * fem,
                height: 34 * fem,
                decoration: const BoxDecoration(
                  color: Color(0xff66cfde),
                ),
                child: Center(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const NextPage()),
                      );
                    },
                    style:
                        TextButton.styleFrom(fixedSize: const Size(400, 100)),
                    child: const Text('NEXT'),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
