import 'package:afed/Messagerie.dart';
import 'package:afed/profil.dart';
import 'package:afed/recherche.dart';
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:afed/utils.dart';
import 'package:afed/constant.dart';
import 'Discussion.dart';
import 'ajouterannonce.dart';
import 'commentaire.dart';
import 'constant.dart';
import 'dashboard.dart';
import 'mesobjetsperdus.dart';
import 'contactus.dart';
import 'mesobjetstrouves.dart';
import'haut.dat.dart';
import 'notification.dart';
class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => Homestate();
}

class Homestate extends State<home>  {
  int currentTab = 0; 
  final List<Widget> screens = [
    home(),
    recherche(),
    ajouterannonce(),
    Notificat(),
   ProfilePage(),
  ]; // to store nested tabs
  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = home();
  int cnt=0;

  @override

  Widget build(BuildContext context) {
  
    double baseWidth = 428;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;

    return
    Scaffold(
     body: SingleChildScrollView(
        child: SafeArea(
          child:
          Container(
            width: double.infinity,
            decoration: BoxDecoration (
              color: blanc,
              borderRadius: BorderRadius.circular(25*fem),
            ),
            child:
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.fromLTRB(0*fem, 15*fem, 0*fem, 0*fem),
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      appbar(fem),
                      Container(
                        width: double.infinity,
                        height: 731*fem,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                          margin: EdgeInsets.fromLTRB(0*fem, 2*fem, 21*fem, 0*fem),
                              width: 50*fem,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                    obj(fem,ffem,'Objet trouvé',1),
                                  obj(fem,ffem,'Objet perdu',2),

                                ],
                              ),
                            ),

                            cnt==0?
                            objttrv(fem, ffem):
                            objtperdu(fem, ffem),

                            // Figma Flutter Generator NavbarWidget - GROUP

                          ],
                        ),
                      ),

                    ],

                  ),
                ),
              ],
            ),
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
                          currentScreen =  recherche();
                          currentTab = 1;
                        });
                        Navigator.of(context).push(
                            MaterialPageRoute(
                                builder: (context) =>  recherche()
                            )
                        );

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


  ////////////////////////widgets//////////////////////
  Container objtperdu(double fem, double ffem) {
    List<Objetslist> perdulst=[
      Objetslist(fem: fem, ffem: ffem, phrase: "j'ai perdu ma veste wesh", photo:"", userpic: "assets/page-1/images/user-1.png", name:"Benyahia Lina"),
      Objetslist(fem: fem, ffem: ffem, phrase: "j'ai perdu ma voiture", photo:"assets/page-1/images/isaac-smith-ucjsz6zqzio-unsplash-1.png", userpic: "assets/page-9/images/user-6.png", name:"Bachir bouras"),
      Objetslist(fem: fem, ffem: ffem, phrase: "j'ai perdu ma motivation :(", photo:"", userpic: "assets/page-1/images/user-1.png", name:"Benyahia Lina"),
      Objetslist(fem: fem, ffem: ffem, phrase: "j'ai perdu ma voiture wesh", photo:"assets/page-1/images/isaac-smith-ucjsz6zqzio-unsplash-1.png", userpic: "assets/page-1/images/user-1.png", name:"Benyahia Lina"),
      Objetslist(fem: fem, ffem: ffem, phrase: "j'ai perdu ma voiture wesh", photo:"assets/page-1/images/isaac-smith-ucjsz6zqzio-unsplash-1.png", userpic: "assets/page-1/images/user-1.png", name:"Benyahia Lina"),
    ];

    return Container(
      width: 323*fem,
      height: double.infinity,
      child:
      ListView.separated(
        itemCount:perdulst.length,
        separatorBuilder:(context,index){
          return const SizedBox(height:6) ;},

        itemBuilder:(context,index){
          Objetslist ob=perdulst[index];
          return buildobjet(fem, ffem,ob.phrase,ob.photo,ob.userpic,ob.name);
        },
      ),
    );
  }
  Container objttrv(double fem, double ffem) {
    List<Objetslist> trouvlist=[
      Objetslist(fem: fem, ffem: ffem, phrase: "j'ai trouvé une veste c'est à qui?", photo:"", userpic: "assets/page-1/images/user-1.png", name:"Benyahia Lina"),
      Objetslist(fem: fem, ffem: ffem, phrase: "j'ai trouvé cette voiture", photo:"assets/page-1/images/isaac-smith-ucjsz6zqzio-unsplash-1.png", userpic: "assets/page-9/images/user-6.png", name:"Bachir bouras"),
      Objetslist(fem: fem, ffem: ffem, phrase: "j'ai trouvé ta  motivation lina arwah", photo:"", userpic: "assets/page-1/images/user-1.png", name:"Benyahia Lina"),
      Objetslist(fem: fem, ffem: ffem, phrase: "j'ai trouvé cette voiture", photo:"assets/page-1/images/isaac-smith-ucjsz6zqzio-unsplash-1.png", userpic: "assets/page-1/images/user-1.png", name:"Benyahia Lina"),
      Objetslist(fem: fem, ffem: ffem, phrase:"j'ai trouvé cette voiture", photo:"assets/page-1/images/isaac-smith-ucjsz6zqzio-unsplash-1.png", userpic: "assets/page-1/images/user-1.png", name:"Benyahia Lina"),
    ];
    return Container(
      width: 323*fem,
      height: double.infinity,
      child:
      ListView.separated(
        itemCount:trouvlist.length,
        separatorBuilder:(context,index){
          return const SizedBox(height:6) ;},

        itemBuilder:(context,index){
            Objetslist ob=trouvlist[index];
          return buildobjet(fem, ffem,ob.phrase,ob.photo,ob.userpic,ob.name);
        },
      ),
    );
  }
 Widget buildobjet(double fem, double ffem,String p,String photoobj,String userpic,String name) {
    return Container(
      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 24*fem),
      padding: EdgeInsets.fromLTRB(24*fem, 16*fem, 24*fem, 24*fem),
      width: double.infinity,
                decoration: BoxDecoration (
                 color: clair,
                borderRadius: BorderRadius.circular(31*fem),
                 ),
                child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                                    Container(
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 100*fem, 16.5*fem),
                                      width: double.infinity,
                                      height: 50*fem,
                                      child:

                                      userid(fem, ffem,userpic,name),
                                    ),
                                    //description
                                    Container(
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 2*fem, 25.5*fem),
                                      constraints: BoxConstraints (
                                        maxWidth: 273*fem,
                                      ),
                                      child:
                                      Text(
                                        p,
                                        style: SafeGoogleFont (
                                          'Ubuntu',
                                          fontSize: 16*ffem,
                                          fontWeight: FontWeight.w400,
                                          height: 1.15*ffem/fem,
                                          color: Color(0xff000000),
                                        ),
                                      ),
                                    ),
                                    //photo
                   if (photoobj!='') Container(

                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 16*fem),
                                      width: 293*fem,
                                      height: 169*fem,
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(16*fem),
                                        child: Image.asset(
                                          photoobj,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    //buttons
                                    Container(
                                      margin: EdgeInsets.fromLTRB(120*fem, 0*fem, 0*fem, 0*fem),
                                      width: double.infinity,
                                      height: 25*fem,
                                      child: Row(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          GestureDetector(
                                              onTap:(){
                                                Navigator.of(context).push(
                                                    MaterialPageRoute(
                                                        builder: (context) => Commentaire()
                                                    )
                                                );
                                              },
                                              child: Container(
                                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 10*fem, 0*fem),
                                                width: 76*fem,
                                                height: double.infinity,
                                                decoration: BoxDecoration (
                                                  color: Color(0xff017286),
                                                  borderRadius: BorderRadius.circular(10*fem),
                                                ),
                                                child: Center(
                                                  child: Text(
                                                    'Commenter',
                                                    style: SafeGoogleFont (
                                                      'Ubuntu',
                                                      fontSize: 12*ffem,
                                                      fontWeight: FontWeight.w500,
                                                      height: 1.15*ffem/fem,
                                                      color: Color(0xffeff7f9),
                                                    ),
                                                  ),
                                                ),
                                              )),
                                          GestureDetector (
                                              onTap:(){print("message");},
                                              child:Container(
                                                width: 69*fem,
                                                height: double.infinity,
                                                decoration: BoxDecoration (
                                                  color: Color(0xfffc7207),
                                                  borderRadius: BorderRadius.circular(10*fem),
                                                ),
                                                child: Center(
                                                  child: Text(
                                                    'Message',
                                                    style: SafeGoogleFont (
                                                      'Ubuntu',
                                                      fontSize: 12*ffem,
                                                      fontWeight: FontWeight.w500,
                                                      height: 1.15*ffem/fem,
                                                      color: Color(0xffeff7f9),
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
  Row userid(double fem, double ffem,String userpic,String name) {
    return Row(
                        children: [
                                          //user pic
                         Container(

                         margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 13*fem, 0*fem),
                        width: 49*fem,
                        height: 50*fem,
                         child: ClipRRect(
                         borderRadius: BorderRadius.circular(360*fem),
                        child: Image.asset(
                       userpic,
                        fit: BoxFit.cover,
                         ),
                         ),
                        ),
                                         //name
                       Container(

                                            margin: EdgeInsets.fromLTRB(0*fem, 6*fem, 0*fem, 6*fem),
                                            height: double.infinity,
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Container(

                                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 1*fem),
                                                  child:
                                                        Text(
                                                          name,
                                                          style: SafeGoogleFont (
                                                            'Ubuntu',
                                                            fontSize: 18*ffem,
                                                            fontWeight: FontWeight.w400,
                                                            height: 1.15*ffem/fem,
                                                            color: Color(0xff1e1e1e),
                                                          ),
                                                        ),

                                                  ),
                                             //temps
                                                Container(
                                                  margin: EdgeInsets.fromLTRB(1*fem, 0*fem, 0*fem, 0*fem),
                                                  child: Text(
                                                    '1h ago',
                                                    style: SafeGoogleFont (
                                                      'Ubuntu',
                                                      fontSize: 12*ffem,
                                                      fontWeight: FontWeight.w400,
                                                      height: 1.15*ffem/fem,
                                                      color: Color(0xff445152),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      );
  }
 Container obj(double fem,double ffem,String s,int id){
    return
           Container(
               margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 10*fem),
             width: 78*fem,
             height: 290*fem,
             decoration: BoxDecoration(
               borderRadius: BorderRadius.only(
                   bottomRight: Radius.circular(25*fem),
                   topRight:Radius.circular(25*fem)

               ),
                 ),
                   child:  Material(
                     borderRadius: BorderRadius.only(
                         bottomRight: Radius.circular(25*fem),
                         topRight:Radius.circular(25*fem)

                     ),
                   color:Colors.transparent,
                   child:
                   InkWell(
                       borderRadius: BorderRadius.only(
                           bottomRight: Radius.circular(25*fem),
                           topRight:Radius.circular(25*fem)

                       ),
                     highlightColor: bleu,
                     focusColor:bleu,
                     splashColor: bleu,
                     onTap: () =>setState((){
                       s=='Objet trouvé'? cnt=0:cnt=1;

                     }),
                     child:

           Ink(
               width: 78*fem,
               height: 290*fem,
   decoration: BoxDecoration(
   borderRadius: BorderRadius.only(
   bottomRight: Radius.circular(25*fem),
   topRight:Radius.circular(25*fem)

   ),
   color:cnt==1&&id==2 ||cnt==0&&id==1 ?fonce :clair,
),                  child:
                        RotatedBox(
                            quarterTurns: -1,
                            child:
                            Center(child:
                            Text(
                              s,
                              textAlign: TextAlign.center,
                              style: SafeGoogleFont (
                                'Ubuntu',
                                fontSize: 20*ffem,
                                fontWeight: FontWeight.w700,
                                height: 1.1568750381*ffem/fem,
                                letterSpacing: 3.2*fem,
                                color:cnt==1&&id==2 ||cnt==0&&id==1 ?bleuclick :bleu,
            ),
            )),
    )


    )
            ),

          )


    ) ;



  }
  Container appbar(double fem) {
    return Container(
                    margin: EdgeInsets.fromLTRB(35*fem, 0*fem, 35.05*fem, 33.84*fem),
                    width: double.infinity,
                    child:
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [

                        Container(
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 227.95*fem, 0*fem),
                          width: 97.99*fem,
                          height: 25.98*fem,
                          child:

                          Image.asset(
                            'assets/page-1/images/fichier-1090639-1.png',
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 4.32*fem),
                          width: 32*fem,
                          height: 31.83*fem,
                          child:
                          GestureDetector(
                            onTap:(){  Navigator.of(context).push(
                                MaterialPageRoute(
                                    builder: (context) => messagerie()
                                )
                            );},
                       child:   Image.asset(
                            'assets/page-1/images/message-regular-1.png',

                          )),
                        ),
                      ],
                    ),
                  );
  }
////////////////////////widgets//////////////////////
}
class Objetslist{
  double fem;
  double ffem;
  String phrase;
  String photo;
  String userpic;
  String name;
  Objetslist({
    required this.fem,
    required this.ffem,
    required this.phrase,
    required this.photo,
    required this.userpic,
    required this.name,
  });
}