import 'package:afed/mesobjetstrouves.dart';
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:afed/utils.dart';
import 'constant.dart';
import 'home-4.dart';
import 'sinscrire.dart';
import 'mesobjetsperdus.dart';
import 'package:email_validator/email_validator.dart';
class Seconnecter extends StatefulWidget {
  const Seconnecter({Key? key}) : super(key: key);

  @override
  State<Seconnecter> createState() => _SeconnecterState();
}

class _SeconnecterState extends State<Seconnecter> {
  bool pass=true;
  final passc=TextEditingController();
  final namec=TextEditingController();
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    double baseWidth = 428;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      body:
      SingleChildScrollView(child:
      Form(
        key: _formKey,
        child: SafeArea(
          child:
          SingleChildScrollView(
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
                    SizedBox( height: 30*fem,),
                    Container(
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 2.02*fem, 25.91*fem),
                      width: 240*fem,
                      height: 101*fem,
                      child: Image.asset(
                        'assets/page-1/images/fichier-1090639-1.png',
                        width: 174.99*fem,
                        height: 49.42*fem,
                      ),
                    ),
                    Container(

                      margin: EdgeInsets.fromLTRB(0*fem, 20*fem, 5.01*fem, 10*fem),
                      child: Text(
                        "se connecter",
                        style: SafeGoogleFont (
                          'Ubuntu',
                          fontSize: 28*ffem,
                          fontWeight: FontWeight.w800,
                          height: 1.15*ffem/fem,
                          color: Color(0xff017286),
                        ),
                      ),
                    ),
                    Column(
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(
                                top: 15,
                                bottom: 15,
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
                                        width: 2, color:bleuclick)),
                                hintText: 'nom utilisateur',
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                top: 15,
                                bottom: 15,
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
                                focusedErrorBorder:UnderlineInputBorder(
                                    borderSide: BorderSide(
                                        width: 2, color:bleuclick)) ,
                                errorBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                        width: 2, color:bleuclick)),
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
                                        width: 2, color:bleuclick)),
                                hintText: 'mot de passe',
                              ),
                            ),
                          ),
                          SizedBox(height: 160*fem,),
                          Container(

                              width: 191*fem,
                              height: 39*fem,
                              decoration: BoxDecoration (
                                color: Color(0xffeff7f9),
                                borderRadius: BorderRadius.circular(10*fem),
                              ),
                              child:
                              Material(
                                  borderRadius: BorderRadius.circular(10*fem),
                                  color: Colors.transparent,
                                  child: InkWell(

                                    hoverColor: clair,
                                    customBorder: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10*fem),
                                    ),
                                    highlightColor: bleu,
                                    focusColor:bleu,

                                    splashColor: fonce,
                                    onTap: () {
                                      if (_formKey.currentState!.validate()) {
                                        Navigator.of(context).push(
                                            MaterialPageRoute(
                                                builder: (context) => home()
                                            )
                                        );

                                      } else {
                                        namec.clear();
                                        passc.clear();
                                      }
                                    },
                                    child:
                                    Ink(
                                      decoration: BoxDecoration(
                                          border: Border.all(color: Color(0xff017286),width: 1.5),
                                          borderRadius: BorderRadius.circular(10*fem),
                                          color: Color(0xffeff7f9)
                                      ),

                                      child:
                                      Center(
                                          child: Center(
                                            child: Text(
                                              'connexion',
                                              textAlign: TextAlign.center,
                                              style: SafeGoogleFont (
                                                'Poppins',
                                                fontSize: 18*ffem,
                                                fontWeight: FontWeight.w700,
                                                height: 1.1568749746*ffem/fem,
                                                letterSpacing: 1.08*fem,
                                                color: bleuclick,
                                              ),
                                            ),
                                          )
                                      ),
                                    ),
                                  )
                              )
                          ),
                        ]),
                    SizedBox(height: 24*fem,),
                    SizedBox(
                      child: RichText(
                        text: TextSpan(
                          style: SafeGoogleFont (
                            'Poppins',
                            fontSize: 13*ffem,
                            fontWeight: FontWeight.w400,
                            height: 1.372000034*ffem/fem,
                            letterSpacing: 0.78*fem,
                            color: Color(0xff017286),
                          ),
                          children: [
                            TextSpan(
                              text: "vous n'avez pas de compte ! ",
                              style: SafeGoogleFont (
                                'Poppins',
                                fontSize: 13*ffem,
                                fontWeight: FontWeight.w500,
                                height: 1.372000034*ffem/fem,
                                letterSpacing: 0.78*fem,
                                color: Color(0xff000000),
                              ),
                            ),
                            TextSpan(
                              text: "S'inscrire",
                              style: SafeGoogleFont (
                                'Poppins',
                                fontSize: 13*ffem,
                                fontWeight: FontWeight.w700,
                                height: 1.372000034*ffem/fem,
                                letterSpacing: 0.78*fem,
                                color: Color(0xfffc7207),
                              ),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  Navigator.of(context).push(
                                      MaterialPageRoute(
                                          builder: (context) => Sinscrire()
                                      )
                                  );
                                },
                            ),
                          ],
                        ),
                      ),
                    )


                  ],
                ),
              ),
            ),
          ),
        ),
      )),
    );
  }
}