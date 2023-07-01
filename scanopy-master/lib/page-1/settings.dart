import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/utils.dart';

class Settings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 360;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return SizedBox(
      width: double.infinity,
      child: Container(
        // settingsFSW (52:99)
        padding: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 115 * fem),
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Color(0xffffffff),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // autogroupus5pYwQ (BmLKgBGRjhCNxFPn3Eus5p)
              padding:
                  EdgeInsets.fromLTRB(12 * fem, 5 * fem, 7 * fem, 19 * fem),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    // group2UaA (52:101)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 0 * fem, 14.02 * fem),
                    padding: EdgeInsets.fromLTRB(
                        0 * fem, 1 * fem, 0 * fem, 0.98 * fem),
                    width: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // pmm3U (I52:101;1:13)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 223 * fem, 0 * fem),
                          child: Text(
                            '9:40pm',
                            style: SafeGoogleFont(
                              'Inter',
                              fontSize: 14 * ffem,
                              fontWeight: FontWeight.w700,
                              height: 1.2125 * ffem / fem,
                              color: const Color(0xff000000),
                            ),
                          ),
                        ),
                        Container(
                          // group1uJ6 (I52:101;16:2)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0.18 * fem, 5.31 * fem, 0 * fem),
                          width: 14.42 * fem,
                          height: 15.18 * fem,
                          child: Image.asset(
                            'assets/page-1/images/group-1-D5Y.png',
                            width: 14.42 * fem,
                            height: 15.18 * fem,
                          ),
                        ),
                        Container(
                          // wifipAA (I52:101;1:7)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 5.31 * fem, 0.02 * fem),
                          width: 18.98 * fem,
                          height: 13.28 * fem,
                          child: Image.asset(
                            'assets/page-1/images/wifi-Bh8.png',
                            width: 18.98 * fem,
                            height: 13.28 * fem,
                          ),
                        ),
                        Container(
                          // batterythreequartersX4a (I52:101;1:9)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 0 * fem, 0.02 * fem),
                          width: 18.98 * fem,
                          height: 9.49 * fem,
                          child: Image.asset(
                            'assets/page-1/images/battery-three-quarters-XRg.png',
                            width: 18.98 * fem,
                            height: 9.49 * fem,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // autogroupv7yp2n2 (BmLKG2J1ScnQtXGAKSv7yp)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 119 * fem, 0 * fem),
                    width: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // vectorZ1G (53:128)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 55 * fem, 1 * fem),
                          width: 35 * fem,
                          height: 30 * fem,
                          child: Image.asset(
                            'assets/page-1/images/vector-uee.png',
                            width: 35 * fem,
                            height: 30 * fem,
                          ),
                        ),
                        Text(
                          // settingss1x (52:110)
                          'Settings',
                          style: SafeGoogleFont(
                            'Inter',
                            fontSize: 32 * ffem,
                            fontWeight: FontWeight.w700,
                            height: 1.2125 * ffem / fem,
                            color: const Color(0xff000000),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // heading1zsG (52:113)
              padding:
                  EdgeInsets.fromLTRB(16 * fem, 16 * fem, 16 * fem, 15 * fem),
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Color(0xffd9d9d9),
              ),
              child: Text(
                'THEME',
                style: SafeGoogleFont(
                  'Inter',
                  fontSize: 24 * ffem,
                  fontWeight: FontWeight.w500,
                  height: 1.2125 * ffem / fem,
                  color: const Color(0xff000000),
                ),
              ),
            ),
            Container(
              // frame25ti (52:114)
              padding: EdgeInsets.fromLTRB(0 * fem, 16 * fem, 0 * fem, 0 * fem),
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Color(0xffffffff),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // autogroupf9hy11g (BmLLBfRJC8z2zQ2Gqrf9hY)
                    margin: EdgeInsets.fromLTRB(
                        16 * fem, 0 * fem, 27 * fem, 15 * fem),
                    width: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // appthemeKHG (52:115)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 190 * fem, 0 * fem),
                          child: Text(
                            'App Theme',
                            style: SafeGoogleFont(
                              'Inter',
                              fontSize: 20 * ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.2125 * ffem / fem,
                              color: Color(0xff000000),
                            ),
                          ),
                        ),
                        Container(
                          // vectorEf8 (53:122)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 0 * fem, 1 * fem),
                          width: 18 * fem,
                          height: 18 * fem,
                          child: Image.asset(
                            'assets/page-1/images/vector-X6n.png',
                            width: 18 * fem,
                            height: 18 * fem,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // heading2jbt (53:130)
              padding:
                  EdgeInsets.fromLTRB(16 * fem, 16 * fem, 16 * fem, 15 * fem),
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Color(0xffd9d9d9),
              ),
              child: Text(
                'ADJUST BORDERS',
                style: SafeGoogleFont(
                  'Inter',
                  fontSize: 24 * ffem,
                  fontWeight: FontWeight.w500,
                  height: 1.2125 * ffem / fem,
                  color: const Color(0xff000000),
                ),
              ),
            ),
            Container(
              // frame3dhG (53:132)
              padding:
                  EdgeInsets.fromLTRB(16 * fem, 16 * fem, 5 * fem, 15 * fem),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xffffffff),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // whenautocapturingletmeadjustbo (53:133)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 67 * fem, 0 * fem),
                    constraints: BoxConstraints(
                      maxWidth: 232 * fem,
                    ),
                    child: Text(
                      'When auto-capturing,let me \nadjust borders after each scan',
                      style: SafeGoogleFont(
                        'Inter',
                        fontSize: 16 * ffem,
                        fontWeight: FontWeight.w400,
                        height: 1.2125 * ffem / fem,
                        color: Color(0xff000000),
                      ),
                    ),
                  ),
                  Container(
                    // vectorRNE (53:125)
                    margin:
                        EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 1 * fem),
                    width: 40 * fem,
                    height: 20 * fem,
                    child: Image.asset(
                      'assets/page-1/images/vector.png',
                      width: 40 * fem,
                      height: 20 * fem,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // heading3Lzz (53:135)
              padding:
                  EdgeInsets.fromLTRB(16 * fem, 16 * fem, 16 * fem, 15 * fem),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xffd9d9d9),
              ),
              child: Text(
                'FILES',
                style: SafeGoogleFont(
                  'Inter',
                  fontSize: 24 * ffem,
                  fontWeight: FontWeight.w500,
                  height: 1.2125 * ffem / fem,
                  color: Color(0xff000000),
                ),
              ),
            ),
            Container(
              // frame4FcA (53:137)
              padding:
                  EdgeInsets.fromLTRB(16 * fem, 16 * fem, 4 * fem, 15.5 * fem),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xffffffff),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // saveoriginalimagestogalleryyYA (53:138)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0.5 * fem, 67 * fem, 0 * fem),
                    child: Text(
                      'Save original images to Gallery',
                      style: SafeGoogleFont(
                        'Inter',
                        fontSize: 16 * ffem,
                        fontWeight: FontWeight.w400,
                        height: 1.2125 * ffem / fem,
                        color: Color(0xff000000),
                      ),
                    ),
                  ),
                  Container(
                    // vector4Zc (53:142)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 0 * fem, 0.5 * fem),
                    width: 40 * fem,
                    height: 20 * fem,
                    child: Image.asset(
                      'assets/page-1/images/vector-vwg.png',
                      width: 40 * fem,
                      height: 20 * fem,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // autogrouppbinaXx (BmLKUmRmrpurfgtaZhPBin)
              width: double.infinity,
              height: 60 * fem,
              child: Stack(
                children: [
                  Positioned(
                    // signal7Xt (52:100)
                    left: 155 * fem,
                    top: 30 * fem,
                    child: Container(
                      width: 25 * fem,
                      height: 25 * fem,
                    ),
                  ),
                  Positioned(
                    // heading4px6 (53:143)
                    left: 0 * fem,
                    top: 0 * fem,
                    child: Container(
                      padding: EdgeInsets.fromLTRB(
                          16 * fem, 15.5 * fem, 16 * fem, 14.5 * fem),
                      width: 360 * fem,
                      height: 60 * fem,
                      decoration: BoxDecoration(
                        color: Color(0xffd9d9d9),
                      ),
                      child: Text(
                        'DATA',
                        style: SafeGoogleFont(
                          'Inter',
                          fontSize: 24 * ffem,
                          fontWeight: FontWeight.w500,
                          height: 1.2125 * ffem / fem,
                          color: Color(0xff000000),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // frame5Han (53:148)
              margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 4 * fem),
              padding:
                  EdgeInsets.fromLTRB(16 * fem, 16 * fem, 3 * fem, 15.5 * fem),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xffffffff),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // allowcellulardatausagezzz (53:149)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0.5 * fem, 113 * fem, 0 * fem),
                    child: Text(
                      'Allow cellular data usage',
                      style: SafeGoogleFont(
                        'Inter',
                        fontSize: 16 * ffem,
                        fontWeight: FontWeight.w400,
                        height: 1.2125 * ffem / fem,
                        color: Color(0xff000000),
                      ),
                    ),
                  ),
                  Container(
                    // vector7Zp (53:150)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 0 * fem, 0.5 * fem),
                    width: 40 * fem,
                    height: 20 * fem,
                    child: Image.asset(
                      'assets/page-1/images/vector-n3g.png',
                      width: 40 * fem,
                      height: 20 * fem,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // heading5qEv (53:151)
              padding: EdgeInsets.fromLTRB(
                  16 * fem, 15.5 * fem, 16 * fem, 14.5 * fem),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xffd9d9d9),
              ),
              child: Text(
                'USAGE INFO',
                style: SafeGoogleFont(
                  'Inter',
                  fontSize: 24 * ffem,
                  fontWeight: FontWeight.w500,
                  height: 1.2125 * ffem / fem,
                  color: Color(0xff000000),
                ),
              ),
            ),
            Container(
              // frame6ipW (53:153)
              padding: EdgeInsets.fromLTRB(0 * fem, 16 * fem, 0 * fem, 0 * fem),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xffffffff),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    // autogroupsa6rTGJ (BmLLVpZi4B6rLQ6Q6USA6r)
                    margin: EdgeInsets.fromLTRB(
                        16 * fem, 0 * fem, 1 * fem, 15.5 * fem),
                    width: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // sendusageinfoari (53:154)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0.5 * fem, 181 * fem, 0 * fem),
                          child: Text(
                            'Send usage info',
                            style: SafeGoogleFont(
                              'Inter',
                              fontSize: 16 * ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.2125 * ffem / fem,
                              color: Color(0xff000000),
                            ),
                          ),
                        ),
                        Container(
                          // vector6q4 (53:155)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 0 * fem, 0.5 * fem),
                          width: 40 * fem,
                          height: 20 * fem,
                          child: Image.asset(
                            'assets/page-1/images/vector-9DG.png',
                            width: 40 * fem,
                            height: 20 * fem,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
