import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:afed/utils.dart';
import 'mesobjetstrouves.dart';
import 'constant.dart';
import'home-4.dart';
class Commentaire extends StatefulWidget {

  const Commentaire({Key? key}) : super(key: key);

  @override
  State<Commentaire> createState() => _CommentaireState();
}

class _CommentaireState extends State<Commentaire> {
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
                      ]),
                ),
              ),
            ),
          ));
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
            margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 0 * fem),
            child:
            Text(
              'Commentaires',
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