import 'package:afed/mesobjetstrouves.dart';
import 'package:afed/seconnecter.dart';
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:afed/utils.dart';
import 'constant.dart';
import 'home-4.dart';
import 'mesobjetsperdus.dart';
import 'package:email_validator/email_validator.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class RestPass extends StatefulWidget {
  const RestPass({Key? key}) : super(key: key);

  @override
  State<RestPass> createState() => _RestPassState();
}

class _RestPassState extends State<RestPass> {
  final emailc = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    double baseWidth = 428;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      body: SingleChildScrollView(
          child: Form(
        key: _formKey,
        child: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              width: double.infinity,
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xffffffff),
                  borderRadius: BorderRadius.circular(25 * fem),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 30 * fem,
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 2.02 * fem, 25.91 * fem),
                      width: 240 * fem,
                      height: 101 * fem,
                      child: Image.asset(
                        'assets/page-1/images/fichier-1090639-1.png',
                        width: 174.99 * fem,
                        height: 49.42 * fem,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 20 * fem, 5.01 * fem, 10 * fem),
                      child: Text(
                        "réinitialiser le mot de passe",
                        style: SafeGoogleFont(
                          'Ubuntu',
                          fontSize: 28 * ffem,
                          fontWeight: FontWeight.w800,
                          height: 1.15 * ffem / fem,
                          color: Color(0xff017286),
                        ),
                      ),
                    ),
                    Column(children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(
                            top: 10, bottom: 10, right: 50, left: 50),
                        child: TextFormField(
                          controller: emailc,
                          keyboardType: TextInputType.emailAddress,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "entrez l'email correctement";
                            }
                            bool emailV = RegExp(
                                    r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                .hasMatch(value);
                            if (!emailV) {
                              return "entrez l'email correctement";
                            }
                          },
                          decoration: InputDecoration(
                            border: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(width: 2, color: bleuclick)),
                            focusedBorder: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(width: 2, color: bleuclick)),
                            focusedErrorBorder: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(width: 2, color: bleuclick)),
                            errorBorder: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(width: 2, color: bleuclick)),
                            errorStyle: SafeGoogleFont(
                              'Poppins',
                              fontSize: 13 * ffem,
                              fontWeight: FontWeight.w500,
                              height: 1.372000034 * ffem / fem,
                              letterSpacing: 0.78 * fem,
                              color: Color(0xfffc7207),
                            ),
                            enabledBorder: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(width: 2, color: bleuclick)),
                            hintText: 'addresss email',
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 35 * fem,
                      ),
                      Container(
                          width: 191 * fem,
                          height: 39 * fem,
                          decoration: BoxDecoration(
                            color: Color(0xffeff7f9),
                            borderRadius: BorderRadius.circular(10 * fem),
                          ),
                          child: Material(
                              borderRadius: BorderRadius.circular(10 * fem),
                              color: Colors.transparent,
                              child: InkWell(
                                hoverColor: clair,
                                customBorder: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10 * fem),
                                ),
                                highlightColor: bleu,
                                focusColor: bleu,
                                splashColor: fonce,
                                onTap: () {
                                  if (_formKey.currentState!.validate()) {
                                    ResetPassword(emailc.text.trim(), context);
                                  } else {
                                    emailc.clear();
                                  }
                                },
                                child: Ink(
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Color(0xff017286), width: 1.5),
                                      borderRadius:
                                          BorderRadius.circular(10 * fem),
                                      color: Color(0xffeff7f9)),
                                  child: Center(
                                      child: Center(
                                    child: Text(
                                      'réinitialisation',
                                      textAlign: TextAlign.center,
                                      style: SafeGoogleFont(
                                        'Poppins',
                                        fontSize: 18 * ffem,
                                        fontWeight: FontWeight.w700,
                                        height: 1.1568749746 * ffem / fem,
                                        letterSpacing: 1.08 * fem,
                                        color: bleuclick,
                                      ),
                                    ),
                                  )),
                                ),
                              ))),
                    ]),
                    SizedBox(
                      height: 24 * fem,
                    ),
                    SizedBox(
                      child: RichText(
                        text: TextSpan(
                          style: SafeGoogleFont(
                            'Poppins',
                            fontSize: 13 * ffem,
                            fontWeight: FontWeight.w400,
                            height: 1.372000034 * ffem / fem,
                            letterSpacing: 0.78 * fem,
                            color: Color(0xff017286),
                          ),
                          children: [
                            TextSpan(
                              text: 'vous avez déja un compte ! ',
                              style: SafeGoogleFont(
                                'Poppins',
                                fontSize: 13 * ffem,
                                fontWeight: FontWeight.w500,
                                height: 1.372000034 * ffem / fem,
                                letterSpacing: 0.78 * fem,
                                color: Color(0xff000000),
                              ),
                            ),
                            TextSpan(
                              text: 'Connexion',
                              style: SafeGoogleFont(
                                'Poppins',
                                fontSize: 13 * ffem,
                                fontWeight: FontWeight.w700,
                                height: 1.372000034 * ffem / fem,
                                letterSpacing: 0.78 * fem,
                                color: Color(0xfffc7207),
                              ),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) => Seconnecter()));
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

Future<void> ResetPassword(email, context) async {
  await FirebaseAuth.instance
      .sendPasswordResetEmail(email: email)
      .then((value) => {
            Fluttertoast.showToast(
                msg: "Email Envoyé :)",
                toastLength: Toast.LENGTH_SHORT,
                gravity: ToastGravity.CENTER,
                timeInSecForIosWeb: 1,
                textColor: Colors.white,
                fontSize: 16.0),
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => Seconnecter()))
          })
      .catchError((error) => print("Failed To Send The message: $error"));
}
