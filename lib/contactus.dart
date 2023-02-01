import 'package:afed/mesobjetstrouves.dart';
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:afed/utils.dart';
import 'constant.dart';
import 'home-4.dart';
import 'mesobjetsperdus.dart';
class contactus extends StatefulWidget {
  const contactus({Key? key}) : super(key: key);

  @override
  State<contactus> createState() => _contactusState();
}

class _contactusState extends State<contactus> {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 428;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      body:
      SingleChildScrollView(child:
      SafeArea(
          child: Container(
          width: double.infinity,
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration (
              color: Color(0xffffffff),
              borderRadius: BorderRadius.circular(25*fem),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(0*fem, 10*fem, 349.01*fem, 10*fem),
                  width: 29*fem,
                  height: 60*fem,
                  child:
                  GestureDetector(
                    onTap: (){
                      Navigator.pop(context);
                    },
                    child:Image.asset(
                    'assets/page-2/images/arrow-left-solid-1-1.png',
                    width: 28*fem,
                    height: 24.16*fem,
                      color: retour,
                  ),
                )),
                Container(
                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 2.02*fem, 25.91*fem),
                  width: 174.99*fem,
                  height: 49.42*fem,
                  child: Image.asset(
                    'assets/page-1/images/fichier-1090639-1.png',
                    width: 174.99*fem,
                    height: 49.42*fem,
                  ),
                ),
                Container(

                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 5.01*fem, 50.5*fem),
                  child: Text(
                    'Nous contacter',
                    style: SafeGoogleFont (
                      'Ubuntu',
                      fontSize: 28*ffem,
                      fontWeight: FontWeight.w500,
                      height: 1.15*ffem/fem,
                      color: Color(0xff017286),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 220*fem, 9*fem),
                  child: Text(
                    'Adresse email ',
                    style: SafeGoogleFont (
                      'Ubuntu',
                      fontSize: 18*ffem,
                      fontWeight: FontWeight.w400,
                      height: 1.2222222222*ffem/fem,
                      letterSpacing: 1*fem,
                      color: Color(0xff445152),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(32*fem, 0*fem, 27.01*fem, 24*fem),
                  padding: EdgeInsets.fromLTRB(28*fem, 14*fem, 28*fem, 13*fem),
                  width: double.infinity,
                  height: 49*fem,
                  decoration: BoxDecoration (
                    border: Border.all(color: Color(0x337c898b)),
                    color: Color(0xffeff7f9),
                    borderRadius: BorderRadius.circular(12*fem),
                  ),
                  child: Center(
                    child: TextFormField(

                      decoration: InputDecoration(
                        border: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,
                        hintText:'exemple@estin.dz',
                        hintStyle: SafeGoogleFont (
                        'Ubuntu',
                        fontSize: 13*ffem,
                        fontWeight: FontWeight.w400,
                        height: 1.6923076923*ffem/fem,
                        letterSpacing: 1*fem,
                        color: Color(0x7c017286),
                      ),),

                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem,250*fem, 12*fem),
                  child: Text(
                    'Description',
                    style: SafeGoogleFont (
                      'Ubuntu',
                      fontSize: 18*ffem,
                      fontWeight: FontWeight.w400,
                      height: 1.2222222222*ffem/fem,
                      letterSpacing: 1*fem,
                      color: Color(0xff445152),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(32*fem, 0*fem, 27.01*fem, 15*fem),
                  padding: EdgeInsets.fromLTRB(20*fem, 0*fem, 28*fem, 12*fem),
                  width: double.infinity,
                  height: 167*fem,
                  decoration: BoxDecoration (
                    border: Border.all(color: Color(0x3d7c898b)),
                    color: Color(0xffeff7f9),
                    borderRadius: BorderRadius.circular(12*fem),
                  ),
                  child:

                  TextFormField(
                    textAlign : TextAlign.start,
                 decoration: InputDecoration(
                   border: InputBorder.none,
                   focusedBorder: InputBorder.none,
                   enabledBorder: InputBorder.none,
                   errorBorder: InputBorder.none,
                   disabledBorder: InputBorder.none,
                  hintText:  'Ecrivez votre problème',
                    hintStyle: SafeGoogleFont (
                      'Ubuntu',
                      fontSize: 13*ffem,
                      fontWeight: FontWeight.w400,
                      height: 1.6923076923*ffem/fem,
                      letterSpacing: 1*fem,
                      color: Color(0x7c017286),
                    ),
                  ),
                  ),),
                Container(
                  margin: EdgeInsets.fromLTRB(217.99*fem, 0*fem, 0*fem, 80*fem),
                  width: 125*fem,
                  height: 47*fem,
                  decoration: BoxDecoration (
                    border: Border.all(color: Color(0x287c898b)),
                    borderRadius: BorderRadius.circular(12*fem),
                  ),
                  child:
          Material(
              borderRadius: BorderRadius.circular(12*fem),
           color: Colors.transparent,
                 child: InkWell(

                   hoverColor: clair,
                   customBorder: RoundedRectangleBorder(
                     borderRadius: BorderRadius.circular(12*fem),
                   ),
                    highlightColor: bleu,
                   focusColor:bleu,

                    splashColor: fonce,
                    onTap: () {},
                    child:
                        Ink(
                            decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12*fem),
                            color: bleuclick,
                                       ),

                    child:
                    Center(
                      child: Center(
                        child: Text(
                          'Envoyer',
                          textAlign: TextAlign.center,
                          style: SafeGoogleFont (
                            'Poppins',
                            fontSize: 18*ffem,
                            fontWeight: FontWeight.w700,
                            height: 1.1568749746*ffem/fem,
                            letterSpacing: 1.08*fem,
                            color: Color(0xffffffff),
                        ),
                      ),
                    )
                    ),
                  ),
                )
           )
                ),
                Container(
                  width: double.infinity,
                  child:
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(

                        margin: EdgeInsets.fromLTRB(23*fem, 1*fem, 0*fem, 0*fem),
                        width: 73.01*fem,
                        height: 1*fem,
                        decoration: BoxDecoration (
                          color: Color(0xff000000),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(20*fem, 0*fem, 23*fem, 0*fem),
                        child: Text(
                          'Trouvez nous sur',
                          style: SafeGoogleFont (
                            'Ubuntu',
                            fontSize: 26*ffem,
                            fontWeight: FontWeight.w500,
                            height: 1.15*ffem/fem,
                            color: Color(0xff445152),
                          ),
                        ),
                      ),
                      Container(
                        // line13Wmf (23:73)
                        margin: EdgeInsets.fromLTRB(0*fem, 1*fem, 0*fem, 0*fem),
                        width: 73.01*fem,
                        height: 1*fem,
                        decoration: BoxDecoration (
                          color: Color(0xff000000),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(

                  margin: EdgeInsets.fromLTRB(110*fem, 0*fem, 96.01*fem, 15*fem),
                  width: double.infinity,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                   GestureDetector(
                     onTap: (){print('facebook');},
                       child:Container(
                        margin: EdgeInsets.fromLTRB(0*fem,20*fem, 0*fem, 0*fem),
                        width: 36*fem,
                        height: 35*fem,
                        child: Image.asset(
                          'assets/page-3/images/facebook.png',
                          width: 36*fem,
                          height: 35*fem,
                        ),
                      )),
                      SizedBox(
                        width: 50*fem,
                      ),
                    GestureDetector(
                      onTap: (){print('gmail');},
                        child:Container(
                        margin: EdgeInsets.fromLTRB(0*fem,20*fem, 0*fem, 0*fem),
                        width: 36*fem,
                        height: 36*fem,
                        child:
                        Image.asset(
                          'assets/page-3/images/gmail.png',
                          width: 36*fem,
                          height: 36*fem,
                        ),
                      )),
                      SizedBox(
                        width: 50*fem,
                      ),
                    GestureDetector(
                      onTap: (){print("instagram");},
                        child:Container(
                        margin: EdgeInsets.fromLTRB(0*fem,20*fem, 0*fem, 0*fem),
                        width: 34*fem,
                        height: 34*fem,
                        child: Image.asset(
                          'assets/page-3/images/instagram.png',
                          width: 34*fem,
                          height: 34*fem,
                        ),
                      )),
                    ],
                  ),
                ),
              ],
            ),
          ),
    ),
        )),
      );
  }
}