import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:afed/utils.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'constant.dart';
import'home-4.dart';
import 'Tgl.dart';
class ajouterannonce extends StatefulWidget {
  const ajouterannonce({Key? key}) : super(key: key);

  @override
  State<ajouterannonce> createState() => _ajouterannonceState();
}

class _ajouterannonceState extends State<ajouterannonce> {
  // String maptheme='';
  // @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //   DefaultAssetBundle.of(context).loadString('assets/maptheme/silver_theme.json').then((value)
  //   {
  //     maptheme=value;
  //   }
  //   );
  // }
  final Completer<GoogleMapController> _controller=Completer();
  final Completer<GoogleMapController> _controller1=Completer();
  static const CameraPosition _kGooglePlex =
  CameraPosition(
      target: LatLng(36.66341269293006, 4.912070512984503),
      zoom:15);
  static const CameraPosition _kGooglePlex1 =
  CameraPosition(
      target: LatLng(36.6612957999728, 4.914423362670078),
      zoom:15);
  bool value=false;
  List<String> pages=[ 'Objet trouvé','Objet perdu'];
  List<String> pages1=[ "L'école",'La résidence'];
  int counter1=0;
  int counter=0;
  @override
  Widget build(BuildContext context) {

    double baseWidth = 428;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return
      Scaffold(
        body:
        SingleChildScrollView(
          child:
          Container(
          width: double.infinity,
          child: Container(
            padding: EdgeInsets.fromLTRB(25*fem, 15*fem, 25*fem, 30*fem),
            width: double.infinity,
            decoration: BoxDecoration (
              color: blanc,
              borderRadius: BorderRadius.circular(23*fem),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[

                Container(
                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 33.5*fem),
                  width: double.infinity,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 26*fem, 0.3*fem),
                        width: 28*fem,
                        height: 32.2*fem,
                        child:
                        GestureDetector(
                          onTap: (){
                            Navigator.pop(context);
                          },
                          child:Image.asset(
                          'assets/page-2/images/arrow-left-solid-1-1.png',
                          width: 28*fem,
                          height: 32.2*fem,
                            color:retour
                        ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 19*fem, 0*fem),
                        child: Text(
                          'Ajouter une annonce',
                          style: SafeGoogleFont (
                            'Ubuntu',
                            fontSize: 28*ffem,
                            fontWeight: FontWeight.w500,
                            height: 1.15*ffem/fem,
                            color:bleuclick,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 1.5*fem),
                        width: 34*fem,
                        height: 34*fem,
                      ),
                    ],
                  ),
                ),

                Tgl(
                    borderRadius:23*fem,
                    selectedTextColor:bleuclick,
                    textColor:fonce,
                    labels:pages,
                    backgroundColor: clair,
                    selectedTabColor: blanc,
                    labelTextStyle: SafeGoogleFont (
                                    'Poppins',
                                    fontSize: 14*ffem,
                                    fontWeight: FontWeight.w700,
                                    height: 1.1568750654*ffem/fem,
                                    letterSpacing: 0.84*fem,
                                     ),
                   onSelectionUpdated: (index){
                      setState(() {
                        counter=index;
                      });
                   },
                    ),

           counter==0?
           Column(
              children:
                [
              GestureDetector(
                onTap: (){
                      print("picture");
                        } ,
                  child:
                  Container(
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 15*fem),
                    width: 190*fem,
                    height: 137*fem,
                    child: Image.asset(
                      'assets/page-4/images/auto-group-qx49.png',
                      width: 190*fem,
                      height: 137*fem,
                    ),
                  )),
                Container(
               
                  child:
                  RichText(
                    text:
                    TextSpan(
                      style: SafeGoogleFont (
                        'Ubuntu',
                        fontSize: 18*ffem,
                        fontWeight: FontWeight.w400,
                        height: 1.2222222222*ffem/fem,
                        letterSpacing: 1*fem,
                        color: Color(0xff1e1e1e),
                      ),
                      children: [
                        TextSpan(
                          text: 'Titre d’annonce ',
                          style: SafeGoogleFont (
                            'Ubuntu',
                            fontSize: 18*ffem,
                            fontWeight: FontWeight.w500,
                            height: 1.2222222222*ffem/fem,
                            letterSpacing: 1*fem,
                            color: bleuclick,
                          ),
                        ),
                        TextSpan(
                          text: '*',
                          style: SafeGoogleFont (
                            'Ubuntu',
                            fontSize: 18*ffem,
                            fontWeight: FontWeight.w500,
                            height: 1.2222222222*ffem/fem,
                            letterSpacing: 1*fem,
                            color: orange,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(24*fem, 0*fem, 23*fem, 25*fem),
                  padding: EdgeInsets.fromLTRB(21*fem, 10*fem, 21*fem, 10*fem),
                  width: double.infinity,
                  height: 45*fem,
                  decoration: BoxDecoration (
                    color: clair,

                    borderRadius: BorderRadius.circular(15*fem),
                  ),
                  child: TextFormField(
                      textAlignVertical:TextAlignVertical.center,
                     textAlign: TextAlign.start,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      errorBorder: InputBorder.none,
                      disabledBorder: InputBorder.none,
                      hintText: 'exemple : airpods trouvé ',
                    hintStyle: SafeGoogleFont (
                      'Ubuntu',
                      fontSize: 15*ffem,
                      fontWeight: FontWeight.w400,
                      height: 1.4666666667*ffem/fem,
                      letterSpacing: 1*fem,
                      color: Color(0x7a7c898b),
                    ),
                    )),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 207*fem, 13*fem),
                  child: RichText(
                    text: TextSpan(
                      style: SafeGoogleFont (
                        'Ubuntu',
                        fontSize: 18*ffem,
                        fontWeight: FontWeight.w400,
                        height: 1.2222222222*ffem/fem,
                        letterSpacing: 1*fem,
                        color: Color(0xff1e1e1e),
                      ),
                      children: [
                        TextSpan(
                          text: 'Description ',
                          style: SafeGoogleFont (
                            'Ubuntu',
                            fontSize: 18*ffem,
                            fontWeight: FontWeight.w500,
                            height: 1.2222222222*ffem/fem,
                            letterSpacing: 1*fem,
                            color: bleuclick,
                          ),
                        ),
                        TextSpan(
                          text: '*',
                          style: SafeGoogleFont (
                            'Ubuntu',
                            fontSize: 18*ffem,
                            fontWeight: FontWeight.w400,
                            height: 1.2222222222*ffem/fem,
                            letterSpacing: 1*fem,
                            color: orange,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(24*fem, 0*fem, 23*fem, 13*fem),
                  padding: EdgeInsets.fromLTRB(21*fem, 5*fem, 21*fem, 16*fem),
                  width: double.infinity,
                  height: 63*fem,

                  decoration: BoxDecoration (
                    color: clair,
                    borderRadius: BorderRadius.circular(15*fem),
                  ),
                  child: TextFormField(
                      textAlignVertical:TextAlignVertical.top,
                      textAlign: TextAlign.start,
                    decoration:InputDecoration(
                      border: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      errorBorder: InputBorder.none,
                      disabledBorder: InputBorder.none,
                    hintText: 'exemple : airpods blanc Apple',
                    hintStyle: SafeGoogleFont (
                      'Ubuntu',
                      fontSize: 15*ffem,
                      fontWeight: FontWeight.w400,
                      height: 1.4666666667*ffem/fem,
                      letterSpacing: 1*fem,
                      color: Color(0x7a7c898b),
                    ),
                    )),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 221*fem, 0*fem),
                  padding: EdgeInsets.fromLTRB(0*fem, 12*fem, 0*fem, 0*fem),
                  child: Text(
                    'localisation',
                    style: SafeGoogleFont (
                      'Ubuntu',
                      fontSize: 18*ffem,
                      fontWeight: FontWeight.w500,
                      height: 1.2222222222*ffem/fem,
                      letterSpacing: 1*fem,
                      color: bleuclick,
                    ),
                  ),
                ),
                  Tgl(
                    borderRadius:23*fem,
                    selectedTextColor:bleuclick,
                    textColor:fonce,
                    labels:pages1,
                    backgroundColor: clair,
                    selectedTabColor: blanc,
                    labelTextStyle: SafeGoogleFont (
                      'Poppins',
                      fontSize: 14*ffem,
                      fontWeight: FontWeight.w700,
                      height: 1.1568750654*ffem/fem,
                      letterSpacing: 0.84*fem,
                    ),
                    onSelectionUpdated: (ind){
                      setState(() {
                        counter1=ind;
                      });
                    },
                  ),
                 counter1==0?
                 SizedBox(
                     width: 321*fem,
                     height: 200*fem,
                     child: GoogleMap(
                       initialCameraPosition: _kGooglePlex,
                       mapType: MapType.hybrid,
                       myLocationButtonEnabled: true,
                       myLocationEnabled: true,
                       onMapCreated: (GoogleMapController controller){
                         _controller.complete(controller);
                       },

                     )
                 ):
                 SizedBox(
                     width: 321*fem,
                     height: 200*fem,
                     child: GoogleMap(
                       initialCameraPosition: _kGooglePlex1,
                       mapType: MapType.hybrid,
                       myLocationButtonEnabled: true,
                       myLocationEnabled: true,
                       onMapCreated: (GoogleMapController controller){
                         _controller1.complete(controller);
                       },

                     )
                 ),
          ListTile(
            onTap: (){
              setState(() {
                value= !value;
                print(value);

              });
            },
              leading:
              Checkbox(
                  side: MaterialStateBorderSide.resolveWith(
                        (Set<MaterialState> states) {
                      if (states.contains(MaterialState.selected)) {
                        return const BorderSide(color: orange);
                      }
                      return const BorderSide(color: orange);
                    },
                  ),
                  value: value!,
                  activeColor: orange,
                  focusColor: orange,
                  hoverColor: orange,
                   onChanged: (value) {
                     setState(() {
                       this.value = value!;
                       print(value);

                     });
                   }),

                  title:
                  Text(
                          'je partage l’annonce en anonyme',
                          style: SafeGoogleFont (
                            'Ubuntu',
                            fontSize: 15*ffem,
                            fontWeight: FontWeight.w400,
                            height: 1.4666666667*ffem/fem,
                            letterSpacing: 1*fem,
                            color: orange,
                          ),

                      ),
          ),

                  Container(
                      margin: EdgeInsets.fromLTRB(222*fem, 0*fem, 0*fem, 0*fem),
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
                                      'Poster',
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
  ]
            ):
           Column(
               children:
               [
                 GestureDetector(
                     onTap: (){
                       print("picture");
                     } ,
                     child:
                     Container(
                       margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 15*fem),
                       width: 190*fem,
                       height: 137*fem,
                       child: Image.asset(
                         'assets/page-4/images/auto-group-qx49.png',
                         width: 190*fem,
                         height: 137*fem,
                       ),
                     )),
                 Container(
                   margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 169*fem, 13*fem),
                   child:
                   RichText(
                     text:
                     TextSpan(
                       style: SafeGoogleFont (
                         'Ubuntu',
                         fontSize: 18*ffem,
                         fontWeight: FontWeight.w400,
                         height: 1.2222222222*ffem/fem,
                         letterSpacing: 1*fem,
                         color: Color(0xff1e1e1e),
                       ),
                       children: [
                         TextSpan(
                           text: 'Titre d’annonce ',
                           style: SafeGoogleFont (
                             'Ubuntu',
                             fontSize: 18*ffem,
                             fontWeight: FontWeight.w500,
                             height: 1.2222222222*ffem/fem,
                             letterSpacing: 1*fem,
                             color: bleuclick,
                           ),
                         ),
                         TextSpan(
                           text: '*',
                           style: SafeGoogleFont (
                             'Ubuntu',
                             fontSize: 18*ffem,
                             fontWeight: FontWeight.w500,
                             height: 1.2222222222*ffem/fem,
                             letterSpacing: 1*fem,
                             color: orange,
                           ),
                         ),
                       ],
                     ),
                   ),
                 ),
                 Container(
                   margin: EdgeInsets.fromLTRB(24*fem, 0*fem, 23*fem, 25*fem),
                   padding: EdgeInsets.fromLTRB(21*fem, 10*fem, 21*fem, 10*fem),
                   width: double.infinity,
                   height: 45*fem,
                   decoration: BoxDecoration (
                     color: clair,

                     borderRadius: BorderRadius.circular(15*fem),
                   ),
                   child: TextFormField(
                       textAlignVertical:TextAlignVertical.center,
                       textAlign: TextAlign.start,
                       decoration: InputDecoration(
                         border: InputBorder.none,
                         focusedBorder: InputBorder.none,
                         enabledBorder: InputBorder.none,
                         errorBorder: InputBorder.none,
                         disabledBorder: InputBorder.none,
                         hintText: 'exemple : airpods trouvé ',
                         hintStyle: SafeGoogleFont (
                           'Ubuntu',
                           fontSize: 15*ffem,
                           fontWeight: FontWeight.w400,
                           height: 1.4666666667*ffem/fem,
                           letterSpacing: 1*fem,
                           color: Color(0x7a7c898b),
                         ),
                       )),
                 ),
                 Container(
                   margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 207*fem, 13*fem),
                   child: RichText(
                     text: TextSpan(
                       style: SafeGoogleFont (
                         'Ubuntu',
                         fontSize: 18*ffem,
                         fontWeight: FontWeight.w400,
                         height: 1.2222222222*ffem/fem,
                         letterSpacing: 1*fem,
                         color: Color(0xff1e1e1e),
                       ),
                       children: [
                         TextSpan(
                           text: 'Description ',
                           style: SafeGoogleFont (
                             'Ubuntu',
                             fontSize: 18*ffem,
                             fontWeight: FontWeight.w500,
                             height: 1.2222222222*ffem/fem,
                             letterSpacing: 1*fem,
                             color: bleuclick,
                           ),
                         ),
                         TextSpan(
                           text: '*',
                           style: SafeGoogleFont (
                             'Ubuntu',
                             fontSize: 18*ffem,
                             fontWeight: FontWeight.w400,
                             height: 1.2222222222*ffem/fem,
                             letterSpacing: 1*fem,
                             color: orange,
                           ),
                         ),
                       ],
                     ),
                   ),
                 ),
                 Container(
                   margin: EdgeInsets.fromLTRB(24*fem, 0*fem, 23*fem, 13*fem),
                   padding: EdgeInsets.fromLTRB(21*fem, 5*fem, 21*fem, 16*fem),
                   width: double.infinity,
                   height: 63*fem,

                   decoration: BoxDecoration (
                     color: clair,
                     borderRadius: BorderRadius.circular(15*fem),
                   ),
                   child: TextFormField(
                       textAlignVertical:TextAlignVertical.top,
                       textAlign: TextAlign.start,
                       decoration:InputDecoration(
                         border: InputBorder.none,
                         focusedBorder: InputBorder.none,
                         enabledBorder: InputBorder.none,
                         errorBorder: InputBorder.none,
                         disabledBorder: InputBorder.none,
                         hintText: 'exemple : airpods blanc Apple',
                         hintStyle: SafeGoogleFont (
                           'Ubuntu',
                           fontSize: 15*ffem,
                           fontWeight: FontWeight.w400,
                           height: 1.4666666667*ffem/fem,
                           letterSpacing: 1*fem,
                           color: Color(0x7a7c898b),
                         ),
                       )),
                 ),
                 Container(
                   margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 221*fem, 0*fem),
                   padding: EdgeInsets.fromLTRB(0*fem, 12*fem, 0*fem, 0*fem),
                   child: Text(
                     'localisation',
                     style: SafeGoogleFont (
                       'Ubuntu',
                       fontSize: 18*ffem,
                       fontWeight: FontWeight.w500,
                       height: 1.2222222222*ffem/fem,
                       letterSpacing: 1*fem,
                       color: bleuclick,
                     ),
                   ),
                 ),
                 Tgl(
                   borderRadius:23*fem,
                   selectedTextColor:bleuclick,
                   textColor:fonce,
                   labels:pages1,
                   backgroundColor: clair,
                   selectedTabColor: blanc,
                   labelTextStyle: SafeGoogleFont (
                     'Poppins',
                     fontSize: 14*ffem,
                     fontWeight: FontWeight.w700,
                     height: 1.1568750654*ffem/fem,
                     letterSpacing: 0.84*fem,
                   ),
                   onSelectionUpdated: (ind){
                     setState(() {
                       counter1=ind;
                     });
                   },
                 ),
                 counter1==0?
                 SizedBox(
                     width: 321*fem,
                     height: 200*fem,
                     child: GoogleMap(
                       initialCameraPosition: _kGooglePlex,
                       mapType: MapType.hybrid,
                       myLocationButtonEnabled: true,
                       myLocationEnabled: true,
                       onMapCreated: (GoogleMapController controller){
                         _controller.complete(controller);
                       },

                     )
                 ):
                 SizedBox(
                     width: 321*fem,
                     height: 200*fem,
                     child: GoogleMap(
                       initialCameraPosition: _kGooglePlex1,
                       mapType: MapType.hybrid,
                       myLocationButtonEnabled: true,
                       myLocationEnabled: true,
                       onMapCreated: (GoogleMapController controller){
                         _controller1.complete(controller);
                       },

                     )
                 ),
                 ListTile(
                   onTap: (){
                     setState(() {
                       value= !value;
                       print(value);

                     });
                   },
                   leading:
                   Checkbox(
                       side: MaterialStateBorderSide.resolveWith(
                             (Set<MaterialState> states) {
                           if (states.contains(MaterialState.selected)) {
                             return const BorderSide(color: orange);
                           }
                           return const BorderSide(color: orange);
                         },
                       ),
                       value: value!,
                       activeColor: orange,
                       focusColor: orange,
                       hoverColor: orange,
                       onChanged: (value) {
                         setState(() {
                           this.value = value!;
                           print(value);

                         });
                       }),

                   title:
                   Text(
                     'je partage l’annonce en anonyme',
                     style: SafeGoogleFont (
                       'Ubuntu',
                       fontSize: 15*ffem,
                       fontWeight: FontWeight.w400,
                       height: 1.4666666667*ffem/fem,
                       letterSpacing: 1*fem,
                       color: orange,
                     ),

                   ),
                 ),

                 Container(
                     margin: EdgeInsets.fromLTRB(222*fem, 0*fem, 0*fem, 0*fem),
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
                                     'Poster',
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
               ]
           ),
              ],
            ),
          ),
    ),
        ),
      );
  }
}