import 'package:afed/contactus.dart';
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';import'home-4.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:afed/utils.dart';

import 'constant.dart';
class mestrouves extends StatefulWidget {
  const mestrouves({Key? key}) : super(key: key);

  @override
  State<mestrouves> createState() => _mestrouvesState();
}

class _mestrouvesState extends State<mestrouves> {
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
                    Expanded(child:
                    ListView.separated(

                        itemCount: 100,
                        separatorBuilder: (context, index) {
                          return const SizedBox(height: 3);
                        },

                        itemBuilder: (context, index) {
                          return
                            buildobjet(
                              fem, ffem, index, 'Le 12/21/2022', '789', '455',);
                        })),
                  ]),
            ),
          ),
        ),
      ));
  }
//////////////////////////////widgets//////////////////////////////////////
  Container buildobjet(double fem, double ffem, int index, String dat, String nbmessages, String nbvues,) {
    return Container(

      margin:
      EdgeInsets.fromLTRB(12 * fem, 0 * fem, 10 * fem, 15 * fem),
      padding: EdgeInsets.fromLTRB(
          22.95 * fem, 20 * fem, 20.76 * fem, 20 * fem),
      width: double.infinity,

      decoration: BoxDecoration(
        color: clair,
        borderRadius: BorderRadius.circular(31 * fem),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(
                0 * fem, 0 * fem, 10.93 * fem, 0 * fem),
            width: 98.36 * fem,
            height: 100 * fem,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16 * fem),
              child: Image.asset(
                'assets/page-2/images/objet.png',
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(
                0 * fem, 0 * fem, 10 * fem, 30 * fem),
            width: 113 * fem,
            child: Text(
              dat + '\n' +
                  nbmessages + 'messages' + '\n' +
                  nbvues + 'vues' + '\n',
              style: SafeGoogleFont(
                'Ubuntu',
                fontSize: 15 * ffem,
                fontWeight: FontWeight.w400,
                height: 1.15 * ffem / fem,
                color: Color(0xff1e1e1e),
              ),
            ),
          ),
          Container(

            margin: EdgeInsets.fromLTRB(
                0 * fem, 32 * fem, 0 * fem, 0 * fem),
            width: 76.5 * fem,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
             GestureDetector(
                 onTap: (){print('dsdf');},
            child: Container(
                  margin: EdgeInsets.fromLTRB(
                      0 * fem, 0 * fem, 0 * fem, 12 * fem),
                  width: double.infinity,
                  height: 25 * fem,
                  decoration: BoxDecoration(
                    color: bleuclick,
                    borderRadius: BorderRadius.circular(10 * fem),
                  ),
                  child: Center(
                    child: Text(
                      'Modifier',
                      style: SafeGoogleFont(
                        'Ubuntu',
                        fontSize: 12 * ffem,
                        fontWeight: FontWeight.w500,
                        height: 1.15 * ffem / fem,
                        color: clair,
                      ),
                    ),
                  ),
                )),
              GestureDetector(
              onTap: (){print('dsddgsdgf');

                },
                  child: Container(
                  width: double.infinity,
                  height: 25 * fem,
                  decoration: BoxDecoration(
                    color: orange,
                    borderRadius: BorderRadius.circular(10 * fem),
                  ),
                  child: Center(
                    child: Text(
                      'Supprimer',
                      style: SafeGoogleFont(
                        'Ubuntu',
                        fontSize: 12 * ffem,
                        fontWeight: FontWeight.w500,
                        height: 1.15 * ffem / fem,
                        color: clair,
                      ),

                    ),
                  ),
                )),
              ],
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
            child:
            Text(
              'Mes Objets trouvés',
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
//////////////////////////////widgets////////////////////////////////
}