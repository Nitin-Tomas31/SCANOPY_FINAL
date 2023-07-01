import 'package:flutter/material.dart';
import 'package:myapp/page-1/page-4.dart';
import 'package:myapp/utils.dart';

class NextPage extends StatefulWidget {
  const NextPage({super.key});
  @override
  _NextPage createState() => _NextPage();
}

class _NextPage extends State<NextPage> {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 360;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return SizedBox(
        width: double.infinity,
        child: Container(
          // page3fLr (23:29)
          padding: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 64 * fem),
          width: double.infinity,
          decoration: const BoxDecoration(
            color: Color(0xffffffff),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
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
              Container(
                // undrawfilesearchingre3evy1koY (23:48)
                margin: EdgeInsets.fromLTRB(
                    0 * fem, 0 * fem, 14.27 * fem, 37 * fem),
                width: 165.73 * fem,
                height: 180 * fem,
                child: Image.asset(
                  'assets/page-1/images/undrawfilesearchingre3evy-1.png',
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                // signalGG6 (23:30)
                margin:
                    EdgeInsets.fromLTRB(155 * fem, 0 * fem, 180 * fem, 0 * fem),
                width: double.infinity,
                height: 25 * fem,
              ),
              Container(
                // scanandeditoWv (23:34)
                margin:
                    EdgeInsets.fromLTRB(0 * fem, 0 * fem, 1 * fem, 47 * fem),
                child: Text(
                  'Scan and Edit',
                  textAlign: TextAlign.center,
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
              Container(
                // easilyscananydocumentstopdfort (23:35)
                margin:
                    EdgeInsets.fromLTRB(10 * fem, 0 * fem, 0 * fem, 76 * fem),
                constraints: BoxConstraints(
                  maxWidth: 259 * fem,
                ),
                child: Text(
                  'Easily scan any documents to PDF or TXT and edit on the go',
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
              Container(
                // buttonbBt (23:36)
                margin:
                    EdgeInsets.fromLTRB(115 * fem, 0 * fem, 115 * fem, 0 * fem),
                width: double.infinity,
                height: 34 * fem,
                decoration: const BoxDecoration(
                  color: Color(0xff66cfde),
                ),
                child: Center(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => FinalPage()),
                      );
                    },
                    style:
                        TextButton.styleFrom(fixedSize: const Size(400, 100)),
                    child: const Text('NEXT'),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
