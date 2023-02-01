import 'package:afed/mesobjetsperdus.dart';
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:afed/utils.dart';
import 'package:intl/intl.dart';
import 'mesobjetstrouves.dart';
import 'constant.dart';
import'home-4.dart';
//il manque la direction des pages selon le text souligné :(
class Notificat extends StatefulWidget {
  const Notificat({Key? key}) : super(key: key);

  @override
  State<Notificat> createState() => _NotificatState();
}

class _NotificatState extends State<Notificat> {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 428;
    double fem = MediaQuery
        .of(context)
        .size
        .width / baseWidth;
    double ffem = fem * 0.97;
    return
      Scaffold(
          body: SingleChildScrollView(
            child: SafeArea(
              child: Container(
                color: Colors.transparent,
                width: double.infinity,
                height: MediaQuery
                    .of(context)
                    .size
                    .height,
                child: Container(
                  padding: EdgeInsets.fromLTRB(25 * fem, 15 * fem, 28 * fem, 0),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: blanc,
                    borderRadius: BorderRadius.circular(25 * fem),
                  ),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        myappbar(fem, ffem),
                        notifi(fem, ffem, context,'assets/page-9/images/user-4.png','Benyahia Lina',' a posté un objet qui peut vous interésser dans  ','Objet perdus'),
                        notifi(fem, ffem, context,'assets/page-9/images/user-6.png','bachir bouras',' a envoyé un email ',''),

                      ]),
                ),
              ),
            ),
          ));
  }

  Container notifi(double fem, double ffem, BuildContext context,String pic,String name,String ph, String pg) {
    return Container(
                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 24*fem, 16*fem),
                        padding: EdgeInsets.fromLTRB(0*fem, 8.2*fem, 0*fem, 7*fem),
                        decoration: BoxDecoration (
                          color: Color(0xffeff7f9),

                          borderRadius: BorderRadius.circular(9*fem),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(6*fem, 0*fem, 6*fem, 9.8*fem),
                              width: 50*fem,
                              height: 50*fem,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(360*fem),
                                child: Image.asset(
                                 pic,
                                  fit:BoxFit.cover
                                ),
                              ),
                            ),
                            Container(
                              width: 250*fem,
                              margin: EdgeInsets.fromLTRB(6*fem, 0*fem, 6*fem, 9.8*fem),
                              padding: EdgeInsets.fromLTRB(5*fem, 0, 5*fem,5*fem),
                              child:RichText(
                                text: TextSpan(
                                  text: name,
                                    style: SafeGoogleFont (
                                      'Poppins',
                                      fontSize: 17*ffem,
                                      fontWeight: FontWeight.w400,
                                      height: 1.5*ffem/fem,
                                      color: Color(0xff000000),
                                    ),
                                    children:[
                                    TextSpan(
                                      text:  ph,
                                      style: SafeGoogleFont (
                                        'Poppins',
                                        fontSize: 12*ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.5*ffem/fem,
                                        color: Color(0xff000000),
                                      ),
                                    ),
                                      TextSpan(
                                        text: pg+'\n',
                                        style: SafeGoogleFont (
                                          textStyle:TextStyle(
                                            decoration: TextDecoration.underline,
                                          ),
                                          'Poppins',
                                          fontSize: 12*ffem,
                                          fontWeight: FontWeight.w400,
                                          height: 1.5*ffem/fem,
                                          color: Color(0xff000000),
                                        ),
                                        recognizer: TapGestureRecognizer()
                                          ..onTap = () {
                                            Navigator.of(context).push(
                                                MaterialPageRoute(
                                                    builder: (context) =>  mesperdus()
                                                )
                                            );
                                           },
                                      ),
                                      TextSpan(
                                        text:DateFormat.yMEd().format(
                                          DateTime.now()),
                                        style:SafeGoogleFont (
                                          'Ubuntu',
                                          fontSize: 12*ffem,
                                          fontWeight: FontWeight.w400,
                                          height: 1.15*ffem/fem,
                                          color: Color(0xff445152),
                                        ),
                                      ),
                                    ]
                                ),

                            ),
                        ),
                            Container(
                              width: 10*fem,
                              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 6*fem, 40*fem),
                              child:
                              GestureDetector(
                                onTap: (){ },
                                child:Icon( Icons.more_vert,size: 25.0,color: dVert,),
                              ),
                            ),

                          ],
                        ),
                      );
  }

  Container myappbar(double fem, double ffem) {
    return Container(
      margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 50 * fem),
      width: double.infinity,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
              margin: EdgeInsets.fromLTRB(
                  0 * fem, 0.2 * fem, 39 * fem, 0 * fem),
              width: 28 * fem,
              height: 24.16 * fem,
              child:
              GestureDetector(
                onTap: (){
                  Navigator.pop(context);
                },
                child:
                Image.asset(
                  'assets/page-2/images/arrow-left-solid-1-1.png',
                  width: 28 * fem,
                  height: 24.16 * fem,
                  color: retour,
                ),
              )),
          Container(
            margin: EdgeInsets.fromLTRB(30 * fem, 0 * fem, 0 * fem, 0* fem),
            child:
            Text(
              'Notifications',
              style: SafeGoogleFont(
                'Ubuntu',
                fontSize: 28 * ffem,
                fontWeight: FontWeight.w500,
                height: 1.15 * ffem / fem,
                color: bleuclick,
              ),
            ),
          )
        ],
      ),
    );
  }

}