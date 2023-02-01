import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:afed/utils.dart';

import 'ajouterannonce.dart';
import 'constant.dart';
import 'contactus.dart';
import 'dashboard.dart';
import 'home-4.dart';
import 'mesobjetsperdus.dart';
import 'mesobjetstrouves.dart';
import 'notification.dart';
import 'profil.dart';
class recherche extends StatefulWidget {
  const recherche({Key? key}) : super(key: key);

  @override
  State<recherche> createState() => _rechercheState();
}

class _rechercheState extends State<recherche> {
  int currentTab = 1;
  final List<Widget> screens = [
    home(),
    recherche(),
    ajouterannonce(),
    // notifications(),
    ProfilePage(),
  ]; // to store nested tabs
  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = recherche();
  int cnt=0;
  final TextEditingController messageC = TextEditingController();
  @override
  Widget build(BuildContext context) {
    double baseWidth = 428;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return 
      
      Scaffold(
        resizeToAvoidBottomInset: false,
        body: 
        
        SingleChildScrollView(
          child: 
          SafeArea(

            child: Container(
              width: double.infinity,
              padding: EdgeInsets.fromLTRB(29*fem, 15*fem, 28*fem, 19*fem),
              decoration: BoxDecoration (
                color: Color(0xffffffff),
                borderRadius: BorderRadius.circular(25*fem),
              ),
                child:
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(6*fem, 0*fem, 0*fem, 19.84*fem),
                          width: 97.99*fem,
                          height: 25.98*fem,
                          child: Image.asset(
                            'assets/page-1/images/fichier-1090639-1.png',
                            width: 97.99*fem,
                            height: 25.98*fem,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(8*fem, 0*fem, 8*fem, 40*fem),
                          width: double.infinity,
                          height: 44*fem,
                          decoration: BoxDecoration (
                            color:clair,
                            borderRadius: BorderRadius.circular(25*fem),
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                height: double.infinity,
                                child: Row(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.fromLTRB(10*fem, 0*fem, 8*fem, 0*fem),
                                      width: 20*fem,
                                      height: 20*fem,
                                      child: Image.asset(
                                        'assets/page-1/images/img.png',
                                      ),
                                ),
                                    Container(
                                        width: 208*fem,
                                      child:
                                      TextField(
                                        maxLines: 1,
                                        controller: messageC,
                                        onSubmitted: (text){
                                        },
                                        decoration: InputDecoration(
                                          hintText: 'Samsung......',
                                          suffixIcon: IconButton(onPressed: (){messageC.clear();},
                                              icon: Icon(Icons.clear,
                                                  size:25,
                                                  color:dVert
                                              )

                                          ),
                                          border: InputBorder.none,
                                        ),
                                      ),
                                    ),


                                  ],
                                ),
                              ),
                              Container(
                                  width: 109*fem,
                                  height: double.infinity,
                                  decoration: BoxDecoration (
                                      color: Color(0xdd017286),
                                      borderRadius: BorderRadius.circular(25*fem)),
                                  child:
                                  Material(
                                      borderRadius: BorderRadius.circular(25*fem),
                                      color: Colors.transparent,
                                      child: InkWell(

                                        hoverColor: clair,
                                        customBorder: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(25*fem),
                                        ),
                                        highlightColor: bleu,
                                        focusColor:bleu,

                                        splashColor: fonce,
                                        onTap: () {
                                          //recherche utilisez messagec
                                        },
                                        child:
                                        Ink(
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(25*fem),
                                            color: bleuclick,
                                          ),

                                          child:
                                          Center(
                                              child: Center(
                                                child:  Text(
                                                  'Rechercher',
                                                  textAlign: TextAlign.center,
                                                  style: SafeGoogleFont (
                                                    'Ubuntu',
                                                    fontSize: 14*ffem,
                                                    fontWeight: FontWeight.w700,
                                                    height: 1.15*ffem/fem,
                                                    color: Color(0xffeff7f9),
                                                  ),
                                                ),
                                              )
                                          ),
                                        ),
                                      )
                                  )
                              )

                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(6*fem, 0*fem, 0*fem, 19.84*fem),
                          child: Text(
                            'Suggestions',
                            textAlign: TextAlign.center,
                            style: SafeGoogleFont (
                              'Ubuntu',
                              fontSize: 26*ffem,
                              fontWeight: FontWeight.w500,
                              height: 1.15*ffem/fem,
                              color: bleuclick,
                            ),
                          ),
                        ),

                        Container(
                          margin: EdgeInsets.fromLTRB(11*fem, 0*fem, 12*fem, 1*fem),
                          width: double.infinity,
                          height: 159*fem,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              GestureDetector(
                              onTap: (){print('cartes');},
                                child:   Container(
                                margin: EdgeInsets.fromLTRB(0*fem, 20*fem, 16*fem, 20*fem),
                                width: 173*fem,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20*fem),
                                    image:DecorationImage(
                                      image:AssetImage(
                                        'assets/page-7/images/tlcharger-1.png',
                                      ),
                                      fit: BoxFit.cover,
                                    )
                                ),
                                height: double.infinity,
                                child: Stack(
                                  children: [
                                    Positioned(
                                      left: 0*fem,
                                      top: 0*fem,
                                      child: Align(
                                        child: SizedBox(
                                          width: 173*fem,
                                          height: 119*fem,
                                          child: Container(
                                            decoration: BoxDecoration (
                                              borderRadius: BorderRadius.circular(20*fem),
                                              color: Color(0x5e445152),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                     Center(
                                        child: Align(
                                          child: SizedBox(
                                            width: 64*fem,
                                            height: 25*fem,
                                            child: Text(
                                              'Cartes',
                                              textAlign: TextAlign.center,
                                              style: SafeGoogleFont (
                                                'Ubuntu',
                                                fontSize: 21*ffem,
                                                fontWeight: FontWeight.w500,
                                                height: 1.15*ffem/fem,
                                                color: Color(0xffeff7f9),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                  ],
                                ),
                              )),
                                GestureDetector(
                                  onTap: (){print('ecouteurs');},
                                  child: Container(
                                width: 159*fem,
                                height: double.infinity,
                                decoration: BoxDecoration (
                                  borderRadius: BorderRadius.circular(20*fem),
                                  image: DecorationImage (
                                    fit: BoxFit.cover,
                                    image: AssetImage (
                                      'assets/page-7/images/common-craft-mini-couteurs-sans-fil-autonomes-blanc-1-bg.png',
                                    ),
                                  ),
                                ),
                                child: Stack(
                                  children: [
                                    Positioned(
                                      left: 1*fem,
                                      top: 0*fem,
                                      child: Align(
                                        child: SizedBox(
                                          width: 158*fem,
                                          height: 159*fem,
                                          child: Container(
                                            decoration: BoxDecoration (
                                              borderRadius: BorderRadius.circular(20*fem),
                                              color: Color(0x5e445152),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                   Center(
                                        child: Align(
                                          child: SizedBox(
                                            width: 98*fem,
                                            height: 25*fem,
                                            child: Text(
                                              'Ecouteurs',
                                              textAlign: TextAlign.center,
                                              style: SafeGoogleFont (
                                                'Ubuntu',
                                                fontSize: 21*ffem,
                                                fontWeight: FontWeight.w500,
                                                height: 1.15*ffem/fem,
                                                color: Color(0xffeff7f9),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                  ],
                                ),
                              )),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(11*fem, 0*fem, 12*fem, 0*fem),
                          width: double.infinity,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              GestureDetector(
                              onTap: (){print('vetments');},
                              child:  Container(
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 19*fem, 1*fem),
                                width: 171*fem,
                                height: 229*fem,
                                decoration: BoxDecoration (
                                  borderRadius: BorderRadius.circular(20*fem),
                                  color: Color(0x5e445152),
                                  image: DecorationImage (
                                    fit: BoxFit.cover,
                                    image: AssetImage (
                                      'assets/page-7/images/tlcharger-1-1-bg.png',
                                    ),
                                  ),
                                ),
                                child:
                                  Stack(
                                  children: [
                                    Positioned(
                                      left: 1*fem,
                                      top: 0*fem,
                                      child: Align(
                                        child: SizedBox(
                                            width: 171*fem,
                                            height: 229*fem,
                                          child: Container(
                                            decoration: BoxDecoration (
                                              borderRadius: BorderRadius.circular(20*fem),
                                              color: Color(0x5e445152),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                             Center(
                                        child: Align(
                                          child: SizedBox(
                                            width: 98*fem,
                                            height: 25*fem,
                                            child: Text(
                                                    'Vetements',
                                                    textAlign: TextAlign.center,
                                                    style: SafeGoogleFont (
                                                      'Ubuntu',
                                                      fontSize: 21*ffem,
                                                      fontWeight: FontWeight.w500,
                                                      height: 1.15*ffem/fem,
                                                      color: Color(0xffeff7f9),
                                                    ),
                                                  ),
                                          ),
                                        ),
                                      ),
                                  ],
                                ),
                              )),
                              GestureDetector(
                              onTap: (){print('argent');},
                              child:  Container(

                                width: 158*fem,
                                height: 211*fem,
                                decoration: BoxDecoration (
                                  borderRadius: BorderRadius.circular(20*fem),
                                  color: Color(0x5e445152),
                                  image: DecorationImage (
                                    fit: BoxFit.cover,
                                    image: AssetImage (
                                      'assets/page-7/images/bg.png',
                                    ),
                                  ),
                                ),
                                child:

                                Stack(
                                  children: [
                                    Positioned(
                                      left: 1*fem,
                                      top: 0*fem,
                                      child: Align(
                                        child: SizedBox(
                                          width: 158*fem,
                                          height: 211*fem,
                                          child: Container(
                                            decoration: BoxDecoration (
                                              borderRadius: BorderRadius.circular(20*fem),
                                              color: Color(0x5e445152),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Center(
                                      child: Center(
                                        child: Text(
                                          'Argent',
                                          textAlign: TextAlign.center,
                                          style: SafeGoogleFont (
                                            'Ubuntu',
                                            fontSize: 21*ffem,
                                            fontWeight: FontWeight.w500,
                                            height: 1.15*ffem/fem,
                                            color: Color(0xffeff7f9),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              )),
                            ],
                          ),
                        ),
                        Container(

                          margin: EdgeInsets.fromLTRB(11*fem, 1*fem, 12*fem, 0*fem),
                          width: double.infinity,
                          height: 269*fem,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              GestureDetector(
                                onTap: (){print('Cles');},
                                child: Container(
                                  margin: EdgeInsets.fromLTRB(0*fem, 20*fem, 16*fem, 20*fem),
                                  width: 156*fem,
                                  height: 176*fem,
                                  decoration: BoxDecoration (
                                    borderRadius: BorderRadius.circular(20*fem),
                                    color: Color(0x5e445152),
                                    image: DecorationImage (
                                      fit: BoxFit.cover,
                                      image: AssetImage (
                                        'assets/page-7/images/e7b72846-7c44-4ad9-b9eb-e1177780cb3c-1.png',
                                      ),
                                    ),
                                  ),
                                  child:
                                  Stack(
                                    children: [
                                      Positioned(
                                        left: 1*fem,
                                        top: 0*fem,
                                        child: Align(
                                          child: SizedBox(
                                            width: 156*fem,
                                            height: 176*fem,
                                            child: Container(
                                              decoration: BoxDecoration (
                                                borderRadius: BorderRadius.circular(20*fem),
                                                color: Color(0x5e445152),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Center(
                                        child: Align(
                                          child: SizedBox(
                                            width: 98*fem,
                                            height: 25*fem,
                                            child: Text(
                                              'Cles',
                                              textAlign: TextAlign.center,
                                              style: SafeGoogleFont (
                                                'Ubuntu',
                                                fontSize: 21*ffem,
                                                fontWeight: FontWeight.w500,
                                                height: 1.15*ffem/fem,
                                                color: Color(0xffeff7f9),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              GestureDetector(
                                  onTap: (){print('lunettes');},
                                  child: Container(
                                    width: 175*fem,
                                    height: 175*fem,
                               margin: EdgeInsets.fromLTRB(0*fem, 20*fem, 0*fem, 20*fem),

                                decoration: BoxDecoration (
                                  borderRadius: BorderRadius.circular(20*fem),
                                  image: DecorationImage (
                                    fit: BoxFit.cover,
                                    image: AssetImage (
                                      'assets/page-7/images/tlcharger-2-1.png',
                                    ),
                                  ),
                                ),
                                child: Stack(
                                  children: [
                                    Positioned(
                                      left: 1*fem,
                                      top: 0*fem,
                                      child: Align(
                                        child: SizedBox(
                                          width: 175*fem,
                                          height: 175*fem,
                                          child: Container(
                                            decoration: BoxDecoration (
                                              borderRadius: BorderRadius.circular(20*fem),
                                              color: Color(0x5e445152),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Center(
                                      child: Align(
                                        child: SizedBox(
                                          width: 98*fem,
                                          height: 25*fem,
                                          child: Text(
                                            'Lunettes',
                                            textAlign: TextAlign.center,
                                            style: SafeGoogleFont (
                                              'Ubuntu',
                                              fontSize: 21*ffem,
                                              fontWeight: FontWeight.w500,
                                              height: 1.15*ffem/fem,
                                              color: Color(0xffeff7f9),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              )),

                            ],
                          ),
                        ),
                      ],
                    ),


          ),

    )
        ),
        bottomNavigationBar: BottomAppBar(
          color:blanc,
          elevation: 5,
          shape:CircularNotchedRectangle(),
          notchMargin:8,
          clipBehavior: Clip.antiAliasWithSaveLayer,

          child: Container(
            decoration: BoxDecoration(
              color: clair,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(15),
                  bottomRight: Radius.circular(15)

              ),
              boxShadow: [
                BoxShadow(
                    color:bleuclick.withOpacity(0.8),
                    spreadRadius: 2, blurRadius: 5)
              ],

            ),
            height:69*fem,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    MaterialButton(
                      minWidth: 40,
                      onPressed: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(
                                builder: (context) =>  home()
                            )
                        );
                        setState(() {
                          currentScreen = home();
                          currentTab = 0;
                        });
                      },
                      child:
                      Center(child: ImageIcon(
                          AssetImage("assets/page-1/images/img_1.png",  ),
                          color: currentTab == 0 ? orange : bleuclick,
                          size:34*fem
                      )),

                    ),
                    MaterialButton(
                      minWidth: 40,
                      onPressed: () {

                        setState(() {
                          currentScreen = recherche();
                          currentTab = 1;
                        });
                      },
                      child: Center(
                        child: ImageIcon(
                            AssetImage("assets/page-1/images/img.png"),
                            color: currentTab == 1 ? orange : bleuclick,
                            size:34*fem
                        ),

                      ),
                    )
                  ],
                ),

                // Right Tab bar icons

                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    MaterialButton(
                      minWidth: 40,
                      onPressed: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(
                                builder: (context) =>  Notificat()
                            )
                        );
                        setState(() {
                          currentScreen =Notificat() ;
                          currentTab = 2;
                        });
                      },
                      child: Center(
                        child: ImageIcon(
                          AssetImage("assets/page-1/images/img_3.png"),
                          color: currentTab == 2 ? orange : bleuclick,
                          size:34*fem,
                        ),


                      ),
                    ),
                    MaterialButton(
                      minWidth: 40,
                      onPressed: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(
                                builder: (context) =>  ProfilePage()
                            )
                        );
                        setState(() {

                          currentScreen =ProfilePage(); // if user taps on this dashboard tab will be active
                          currentTab = 3;
                        });
                      },
                      child: Center(
                        child:
                        ImageIcon(
                            AssetImage("assets/page-1/images/img_4.png"),
                            color: currentTab == 3 ? orange : bleuclick,
                            size:34*fem
                        ),

                      ),
                    )
                  ],
                )

              ],
            ),
          ),

        ),
        floatingActionButton:
        FloatingActionButton(
          onPressed: () {
            Navigator.of(context).push(
                MaterialPageRoute(
                    builder: (context) =>ajouterannonce()
                )
            );

          },
          backgroundColor: orange,
          elevation: 10,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.all(
                Radius.circular(100),
              ),
            ),
            child:  ImageIcon(
              AssetImage("assets/page-1/images/img_2.png"),
              color:blanc,
            ),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      );
  }
}