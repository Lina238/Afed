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
class ProfileInfo extends StatefulWidget {
  const ProfileInfo({Key? key}) : super(key: key);
  @override
  State<ProfileInfo> createState() => _ProfileInfoState();
}

class _ProfileInfoState extends State<ProfileInfo> {
  bool pass=true;
  bool pass1=true;
  bool pass2=true;
  final passc=TextEditingController();
  final passc1=TextEditingController();
  final passc2=TextEditingController();
  final namec=TextEditingController();
  String emai='linaben4545@gmail.com';
  final _fkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    double baseWidth = 428;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      appBar: AppBar(
        title:
        Container(
          margin: EdgeInsets.fromLTRB(80*fem,0, 80*fem,0*fem),
          child:
          Text(
            'Informations',
            style: SafeGoogleFont(
              'Ubuntu',
              fontSize: 28 * ffem,
              fontWeight: FontWeight.w500,
              height: 1.15 * ffem / fem,
              color: blanc,
            ),
          ),
        ),
        automaticallyImplyLeading :false,
        elevation: 0.0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: retour,
            size: 45,
          ),
          onPressed: () {

            Navigator.pop(context);
          },
        ),
        backgroundColor: bleuclick,
      ),
      body:
      SingleChildScrollView(
        child: Form(
          key:_fkey,
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
                            Positioned(
                              bottom:25,
                              left:225,
                                child: IconButton(
                                  icon: Icon(
                                    size:35*fem,
                                    Icons.camera_alt,
                                    color: Color(0xff607D82),
                                  ),
                                  onPressed: () {},
                                ),

                            )

                          ],
                        ),
                      ),
                      Container(
                          child:Column(
                              children:[
                                Container(
                                  margin: EdgeInsets.fromLTRB(0*fem, 15*fem, 210*fem, 0*fem),
                                  child: Text(
                                    'nom utilisateur ',
                                    style: SafeGoogleFont (
                                      'Ubuntu',
                                      fontSize: 18*ffem,
                                      fontWeight: FontWeight.w300,
                                      height: 1.2222222222*ffem/fem,
                                      letterSpacing: 1*fem,
                                      color: Color(0xff445152),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                      right: 50,
                                      left: 50
                                  ),

                                  child:
                                  TextFormField(
                                    controller: namec,
                                    validator: (value){
                                      if(value!.isEmpty||namec.text.length<6){
                                        return "Entez correctement le nom";
                                      }else{return null;}
                                    },
                                    decoration: InputDecoration(
                                      focusedErrorBorder:UnderlineInputBorder(
                                          borderSide: BorderSide(
                                              width: 2, color:bleuclick)) ,
                                      errorBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                              width: 2, color:bleuclick)),
                                      hintText: 'tapez ici',
                                      errorStyle: SafeGoogleFont (
                                        'Poppins',
                                        fontSize: 13*ffem,
                                        fontWeight: FontWeight.w500,
                                        height: 1.372000034*ffem/fem,
                                        letterSpacing: 0.78*fem,
                                        color: Color(0xfffc7207),
                                      ),
                                      enabledBorder: UnderlineInputBorder( //
                                          borderSide: BorderSide(
                                              width: 1, color:bleuclick)),
                                      suffixIcon: IconButton(
                                          onPressed: (){
                                          },
                                        icon:Icon(Icons.edit,color: Colors.black,),

                                    ),
                                  ),
                                )),
                                Container(
                                  margin: EdgeInsets.fromLTRB(0*fem, 15*fem, 210*fem, 0*fem),
                                  child: Text(
                                    'Adresse email ',
                                    style: SafeGoogleFont (
                                      'Ubuntu',
                                      fontSize: 18*ffem,
                                      fontWeight: FontWeight.w300,
                                      height: 1.2222222222*ffem/fem,
                                      letterSpacing: 1*fem,
                                      color: Color(0xff445152),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                      right: 50,
                                      left: 50
                                  ),

                                  child:
                                  TextFormField(
                                    readOnly: true,
                                    keyboardType: TextInputType.emailAddress,
                                    decoration: InputDecoration(

                                      hintText: emai,
                                      errorStyle: SafeGoogleFont (
                                        'Poppins',
                                        fontSize: 13*ffem,
                                        fontWeight: FontWeight.w500,
                                        height: 1.372000034*ffem/fem,
                                        letterSpacing: 0.78*fem,
                                        color: Color(0xfffc7207),
                                      ),
                                      enabledBorder: UnderlineInputBorder( //
                                          borderSide: BorderSide(
                                              width: 1, color:bleuclick)),
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.fromLTRB(0*fem, 15*fem,140*fem, 0*fem),
                                  child: Text(
                                    'Mot de passe actuel ',
                                    style: SafeGoogleFont (
                                      'Ubuntu',
                                      fontSize: 18*ffem,
                                      fontWeight: FontWeight.w300,
                                      height: 1.2222222222*ffem/fem,
                                      letterSpacing: 1*fem,
                                      color: Color(0xff445152),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                      right: 50,
                                      left: 50
                                  ),

                                  child: TextFormField(
                                    controller: passc,
                                    keyboardType: TextInputType.visiblePassword,
                                    validator: (value) {
                                      if (value!.trim().isEmpty||passc.text.length<6) {
                                        return 'Entrez le mot de passe correctement';
                                      }
                                      return null;
                                    },

                                    obscureText: pass,
                                    decoration: InputDecoration(
                                      errorBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                              width: 2, color:bleuclick)),
                                      focusedErrorBorder:UnderlineInputBorder(
                                          borderSide: BorderSide(
                                              width: 2, color:bleuclick)) ,
                                      hintText: 'tapez ici',

                                      errorStyle: SafeGoogleFont (
                                        'Poppins',
                                        fontSize: 13*ffem,
                                        fontWeight: FontWeight.w500,
                                        height: 1.372000034*ffem/fem,
                                        letterSpacing: 0.78*fem,
                                        color: Color(0xfffc7207),
                                      ),
                                      suffixIcon: IconButton(
                                          onPressed: (){
                                            setState(() {
                                              if(pass){
                                                pass = false;
                                              }else{
                                                pass = true;
                                              }
                                            });
                                          }, icon: pass == true?Icon(Icons.remove_red_eye_outlined):
                                      ImageIcon(
                                        AssetImage("assets/page-1/images/eye-slash-regular-2.png"),
                                        color: bleuclick,
                                        size: 24,
                                      )),
                                      enabledBorder: UnderlineInputBorder( //
                                          borderSide: BorderSide(
                                              width:1, color:bleuclick)),
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.fromLTRB(0*fem, 15*fem, 140*fem, 0*fem),
                                  child: Text(
                                    'Nouveau mot de passe ',
                                    style: SafeGoogleFont (
                                      'Ubuntu',
                                      fontSize: 18*ffem,
                                      fontWeight: FontWeight.w300,
                                      height: 1.2222222222*ffem/fem,
                                      letterSpacing: 1*fem,
                                      color: Color(0xff445152),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                      right: 50,
                                      left: 50
                                  ),

                                  child: TextFormField(
                                    controller: passc1,
                                    keyboardType: TextInputType.visiblePassword,
                                    validator: (value) {
                                      if (value!.trim().isEmpty||passc1.text.length<6) {
                                        return 'Entrez le mot de passe correctement';
                                      }
                                      return null;
                                    },

                                    obscureText: pass1,
                                    decoration: InputDecoration(
                                      focusedErrorBorder:UnderlineInputBorder(
                                          borderSide: BorderSide(
                                              width: 2, color:bleuclick)) ,
                                      errorBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                              width: 2, color:bleuclick)),
                                      hintText: 'tapez ici',
                                      errorStyle: SafeGoogleFont (
                                        'Poppins',
                                        fontSize: 13*ffem,
                                        fontWeight: FontWeight.w500,
                                        height: 1.372000034*ffem/fem,
                                        letterSpacing: 0.78*fem,
                                        color: Color(0xfffc7207),
                                      ),
                                      suffixIcon: IconButton(
                                          onPressed: (){
                                            setState(() {
                                              if(pass1){
                                                pass1 = false;
                                              }else{
                                                pass1 = true;
                                              }
                                            });
                                          }, icon: pass1 == true?Icon(Icons.remove_red_eye_outlined):
                                      ImageIcon(
                                        AssetImage("assets/page-1/images/eye-slash-regular-2.png"),
                                        color: bleuclick,
                                        size: 24,
                                      )),
                                      enabledBorder: UnderlineInputBorder( //
                                          borderSide: BorderSide(
                                              width: 1, color:bleuclick)),
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.fromLTRB(0*fem, 15*fem, 210*fem, 0*fem),
                                  child: Text(
                                    'confirmation ',
                                    style: SafeGoogleFont (
                                      'Ubuntu',
                                      fontSize: 18*ffem,
                                      fontWeight: FontWeight.w300,
                                      height: 1.2222222222*ffem/fem,
                                      letterSpacing: 1*fem,
                                      color: Color(0xff445152),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                      right: 50,
                                      left: 50
                                  ),

                                  child: TextFormField(
                                    controller: passc2,
                                    keyboardType: TextInputType.visiblePassword,
                                    validator: (value) {
                                      if (value!.trim().isEmpty||passc.text.length<6) {
                                        return 'Entrez le mot de passe correctement';
                                      }
                                      return null;
                                    },

                                    obscureText: pass2,
                                    decoration: InputDecoration(
                                      focusedErrorBorder:UnderlineInputBorder(
                                          borderSide: BorderSide(
                                              width: 2, color:bleuclick)) ,
                                      errorBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                              width: 2, color:bleuclick)),
                                      hintText: 'tapez ici',
                                      errorStyle: SafeGoogleFont (
                                        'Poppins',
                                        fontSize: 13*ffem,
                                        fontWeight: FontWeight.w500,
                                        height: 1.372000034*ffem/fem,
                                        letterSpacing: 0.78*fem,
                                        color: Color(0xfffc7207),
                                      ),
                                      suffixIcon: IconButton(
                                          onPressed: (){
                                            setState(() {
                                              if(pass2){
                                                pass2 = false;
                                              }else{
                                                pass2 = true;
                                              }
                                            });
                                          }, icon: pass2 == true?Icon(Icons.remove_red_eye_outlined):
                                      ImageIcon(
                                        AssetImage("assets/page-1/images/eye-slash-regular-2.png"),
                                        color: bleuclick,
                                        size: 24,
                                      )),
                                      enabledBorder: UnderlineInputBorder( //
                                          borderSide: BorderSide(
                                              width: 1, color:bleuclick)),

                                    ),
                                  ),
                                ),
                                SizedBox(height:10*fem,),
                                Container(

                                    width: 202*fem,
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

                                          hoverColor: Color(0xff7C898B),
                                          customBorder: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(12*fem),
                                          ),
                                          highlightColor: Color(0xff7C898B),
                                          focusColor:Color(0xff7C898B),
                                          splashColor: Color(0xff7C898B),
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
                                                    'Modifier',
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
                              ])
                      )
                    ]
                )
            ),
          ),
        ),
      ));
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