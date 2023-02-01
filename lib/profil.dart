import 'package:afed/recherche.dart';
import 'package:flutter/material.dart';

import 'ajouterannonce.dart';
import 'constant.dart';
import 'package:afed/mesobjetstrouves.dart';
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:afed/utils.dart';
import 'constant.dart';
import 'dashboard.dart';
import 'home-4.dart';
import'profilinfo.dart';
import 'mesobjetsperdus.dart';
import 'contactus.dart';
import 'notification.dart';
class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);
  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  int currentTab = 3; // to keep track of active tab index
  final List<Widget> screens = [
    home(),
    recherche(),
    ajouterannonce(),
    Notificat(),
    ProfilePage(),
  ];
  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = ProfilePage();
  int cnt=0;
  @override
  Widget build(BuildContext context) {
    double baseWidth = 428;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading :false,
        elevation: 0.0,
        backgroundColor: bleuclick,
        actions: <Widget>[
          Padding(
            padding:EdgeInsets.only(right: 20*fem),
            child:GestureDetector(
              onTap: (){},
              child:ImageIcon(
                color: retour,
                AssetImage("assets/page-8/images/arrow-right-from-bracket-solid-1.png"),
                size: 29*fem,
              )
            )
          )
        ],
      ),
      body:
   
    SingleChildScrollView(
      child: SafeArea(
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
        width: double.infinity,
        height: 300*fem,
         child: Stack(
            alignment: Alignment.center,
            children: [
              CustomPaint(
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                ),
                painter: HeaderCurvedContainer(),
              ),

                  Container(
                    margin: EdgeInsets.fromLTRB(0,80*fem, 0,20*fem),
                    padding: EdgeInsets.all(30),
                    width: 170*fem,
                    height: 170*fem,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.black,
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('assets/page-1/images/.png'),
                      ),
                    ),
                  ),

              Positioned(
                bottom:1*fem,
                child:
               Container(
                  margin: EdgeInsets.fromLTRB(1*fem, 0*fem, 0*fem, 0*fem),
                  child: Text(
                    'Bachir',
                    textAlign: TextAlign.center,
                    style: SafeGoogleFont (
                      'Ubuntu',
                      fontSize: 32*ffem,
                      fontWeight: FontWeight.w400,
                      height: 1.15*ffem/fem,
                      color: Colors.black,
                    ),
                  ),
               )   ),
            

            ],
        ),
        ),
          Container(
          child:Column(
        children:[
          itemms(fem,ffem,'assets/page-8/images/auto-group-dddt.png','Informations personnelles',ProfileInfo()),
          itemms(fem,ffem,'assets/page-8/images/auto-group-ugb4.png','Mes objets  perdus',mesperdus()),
          itemms(fem,ffem,'assets/page-8/images/auto-group-zwbc.png','Mes objets trouvés',mestrouves()),
          itemms(fem,ffem,'assets/page-8/images/auto-group-xbxe.png','Nous contacter',contactus()),
        ])
          )
        ]
        )
        ),
      ),
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
                      builder: (context) => home()
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
                    Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (context) =>  recherche()
                        )
                    );
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
                      currentScreen = Notificat();
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
  GestureDetector itemms(double fem,double ffem,String Icnimg,String tx,Widget pj) {
    return
      GestureDetector(
        onTap: (){
          Navigator.of(context).push(
              MaterialPageRoute(
                  builder: (context) =>  pj
              )
          );;
        },
        child: Container(

            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(

                  margin: EdgeInsets.fromLTRB(50*fem, 15*fem, 50*fem,0*fem),
                  padding: EdgeInsets.fromLTRB(24*fem, 13*fem, 24*fem, 13*fem),
                  width: double.infinity,
                  decoration: BoxDecoration (
                    color: Color(0xffeff7f9),
                    borderRadius: BorderRadius.circular(10*fem),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(

                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 16*fem, 0*fem),
                        width: 44*fem,
                        height: 44*fem,
                        child: Image.asset(
                          Icnimg,
                        ),
                      ),
                    Expanded(child:
                    Container(
                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 8*fem, 0*fem),
                        child: Text(
                         tx,
                          style: SafeGoogleFont (
                            'Ubuntu',
                            fontSize: 16*ffem,
                            fontWeight: FontWeight.w500,
                            height: 1.15*ffem/fem,
                            color: Color(0xff7c898b),
                          ),
                        ),
                      )),
                      Container(

                        margin: EdgeInsets.fromLTRB(0*fem, 3.6*fem, 0*fem, 0*fem),
                        width: 16*fem,
                        height: 25.6*fem,
                        child: Image.asset(
                          'assets/page-8/images/angle-right-solid-6.png',
                          width: 16*fem,
                          height: 25.6*fem,
                        ),
                      ),
                    ],
                  ),
                ),


              ],
            )
        ),
      );
  }
}

class HeaderCurvedContainer extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()..color = bleuclick;
    Path path = Path()
      ..relativeLineTo(0, 130)
      ..quadraticBezierTo(size.width / 2, 225, size.width, 130)
      ..relativeLineTo(0, -130)
      ..close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}