import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Discussion.dart';
import 'constant.dart';
import'home-4.dart';
import 'package:afed/utils.dart';
class messagerie extends StatefulWidget {
  const messagerie({Key? key}) : super(key: key);

  @override
  State<messagerie> createState() => _messagerieState();
}

class _messagerieState extends State<messagerie> {
  @override
  Widget build (BuildContext context){
    double baseWidth = 428;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return
      Scaffold(
        body:
        SafeArea(
          child:Container(
              color:dVert,
              width: double.infinity,
              child:
        Column (
          children : [

              appbar(fem),
          //Container
            FavoriteSection(),
            Expanded (
              child : MessageSection(),
            ),//Expanded
          ],
    )
          )
        ),//Column

        // floatingActionButton : FloatingActionButton(
        //   onPressed: () {},
        //   backgroundColor: dVert,
        //   child: const Icon(
        //     Icons.edit,
        //     size:20,
        //   ),//Icon
        // ),//floatingActionbutton
      );//Scaffold;//Scaffold
  }
  Container appbar(double fem) {
    double baseWidth = 428;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return
      Container(

        padding: EdgeInsets.fromLTRB(25*fem, 15*fem, 28*fem, 18*fem),
        width: double.infinity,
        child: Container(
          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 7*fem, 0*fem),
          height: 58*fem,
          width: double.infinity,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
          Container(
            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 18*fem, 9.8*fem),
            width: 28*fem,
            height: 24.16*fem,
          child:
          GestureDetector(
            onTap: (){
              Navigator.of(context).push(
                  MaterialPageRoute(
                      builder: (context) =>home()
                  )
              );
            },
            child:Image.asset(
              'assets/page-2/images/arrow-left-solid-1-1.png',
              color: retour,
            ),
          ),
        ),
          Container(
              margin: EdgeInsets.fromLTRB(18*fem, 0*fem,0 , 9.8*fem),
              padding: EdgeInsets.fromLTRB(40*fem, 0,40*fem,0),
              height: double.infinity,
              child:
              Center(
                  child:
                  Text(
                'Messagerie',
                style: SafeGoogleFont (
                  'Ubuntu',
                  fontSize: 30*ffem,
                  fontWeight: FontWeight.w500,
                  height: 1.15*ffem/fem,
                  color: blanc,
                ),
              )
          )
          ),
            ],
          ),
        ),
      );
  }
}


class FavoriteSection extends StatelessWidget {
  FavoriteSection({Key? key}) : super(key: key);

  final List favoriteContacts = [{
      'name': 'Lynda',
      'profile': 'assets/page-5/images/a1.jpg',
    }, {
      'name': 'Sophie',
      'profile': 'assets/page-5/images/a2.jpg',
    }, {
      'name': 'Hassna',
      'profile': 'assets/page-5/images/a3.jpg',
    }, {
      'name': 'Chirraz',
      'profile': 'assets/page-5/images/a4.jpg',
    }, {
      'name': 'Alaa',
      'profile': 'assets/page-5/images/a5.jpg',
    }, {
      'name': 'Zelikha',
      'profile': 'assets/page-5/images/a6.jpg',
    }, {
      'name': 'Irada',
      'profile': 'assets/page-5/images/a7.jpg',
    },];

  @override
  Widget build(BuildContext context) {
    double baseWidth = 428;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      color: dVert,
      child: Container(
          height : 200,
          padding: const EdgeInsets.symmetric(vertical: 20),
          decoration: const BoxDecoration(
            color: blanc,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(40),
              topLeft: Radius.circular(40),
            ),//BorderRadius.only
          ),//BoxDecoration
          child : Column (
            children : [
              Container(
                padding: EdgeInsets.fromLTRB(50*fem, 0*fem,  49*fem,0),
                margin: EdgeInsets.fromLTRB(12*fem, 0*fem, 0*fem, 12*fem),
                child: Row (
                  mainAxisAlignment : MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Text(
                        'Disscusions récentes',
                        style: SafeGoogleFont (
                          'Poppins',
                          fontSize: 22*ffem,
                          fontWeight: FontWeight.w700,
                          height: 1.5*ffem/fem,
                          color: Color(0xdd1e1e1e),
                        ),
                      ),//Text
                    ),//Container
      Container(

        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 1*fem),
        width: 29*fem,
        height: 29*fem,
        child: Image.asset(
          'assets/page-5/images/magnifying-glass-solid-2.png',
          width: 29*fem,
          height: 29*fem,
        ),
      ),//IconButton
                  ],
                ),
              ),//Row

              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: favoriteContacts.map((favorite) {
                    return 
                      GestureDetector(
                        onTap: () => {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) =>
                                  Discussion(
                                     photo: favorite['profile'],
                                      nom:favorite['name'],
                                    enligne:  true
                                  )
                              ))
                        },
                        child: Container(
                        margin:  EdgeInsets.only(left: 15),
                        child: Column(
                          children: [
                            Container(
                              padding: EdgeInsets.all(4),
                              height: 70,
                              width: 70,
                              decoration: BoxDecoration(
                                color: blanc,
                                shape: BoxShape.circle,
                              ),//BoxDecoration
                              child: CircleAvatar(
                                radius: 20,
                                backgroundImage: AssetImage(favorite['profile']),
                              ),//CircleAvatar
                            ),//Container
                            SizedBox(height: 6),
                            Text(
                              favorite['name'],
                              style: SafeGoogleFont (
                                'Ubuntu',
                                fontSize: 18*ffem,
                                fontWeight: FontWeight.w500,
                                height: 1.15*ffem/fem,
                                color: Color(0xdd1e1e1e),
                              ),
                            ),
                            //Text
                          ],
                        ),//Column
                    ),
                      );//Container
                  }).toList(),
                ),//Row
              )//SingleChildScrolView
            ],
          )//Column
      ),//Container
    );//Container
  }
}
class MessageSection extends StatelessWidget {
  MessageSection({Key? key}) : super(key: key);

  final List messages = [{
      'senderProfile': 'assets/page-5/images/a2.jpg',
      'senderName': 'Lynda',
      'message': 'ok',
      'unRead': 0,
      'date': '16:35',
    }, {
      'senderProfile': 'assets/page-5/images/a3.jpg',
      'senderName': 'Alaa',
      'message': 'salli 3chiya khir',
      'unRead': 2,
      'date': '16:03',
    }, {
      'senderProfile': 'assets/page-5/images/a4.jpg',
      'senderName': 'Hassna',
      'message': 'thoufitid nagh mazzal ?',
      'unRead': 6,
      'date': '15:16',
    }, {
      'senderProfile': 'assets/page-5/images/a5.jpg',
      'senderName': 'Lina',
      'message': 'je ne sais pas',
      'unRead': 0,
      'date': '13:58',
    }, {
      'senderProfile': 'assets/page-5/images/a6.jpg',
      'senderName': 'Irada',
      'message': 'oui fort possible',
      'unRead': 5,
      'date': '10:42',
    }, {
      'senderProfile': 'assets/page-5/images/a7.jpg',
      'senderName': 'Chiraz',
      'message': 'Merci sahiti',
      'unRead': 2,
      'date': '09:30',
    }, {
      'senderProfile': 'assets/page-5/images/a6.jpg',
      'senderName': 'Zelikha',
      'message': 'Pourquoi pas ?',
      'unRead': 0,
      'date': '09:07',
    }, {
      'senderProfile': 'assets/page-5/images/a7.jpg',
      'senderName': 'Sophie',
      'message': 'aaa okay ',
      'unRead': 3,
      'date': '07:31',
    },];

  @override
  Widget build(BuildContext context) {
    double baseWidth = 428;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    ChatingSection? ch;
    return SingleChildScrollView(
      child: Column(
        children: messages.map((message) {
          return InkWell(
            onTap: () => {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) =>
                      Discussion(
                          photo: message['senderProfile'],
                          nom:message['senderName'],
                          enligne:  true,

                      )
                  ))
            },

            splashColor: dVert,
            child: Container(
              color: blanc,
              padding: const EdgeInsets.only(left: 30, right: 10, top: 15),
              child: Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(right: 23),
                    width: 62,
                    height: 62,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage(message['senderProfile']),
                        fit: BoxFit.cover,
                      ),//DecorationImage
                    ),//BoxDecoration
                  ),//Container
                  Expanded(
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              margin: const EdgeInsets.only(top: 25),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    message['senderName'],
                                    style:  SafeGoogleFont (
                                      'Ubuntu',
                                      fontSize: 18*ffem,
                                      fontWeight: FontWeight.w500,
                                      height: 1.15*ffem/fem,
                                      color: Color(0xff445152),
                                    ),
                                  ),
                                  Wrap(children: [
                                    Text(
                                      message['message'],
                                      style: SafeGoogleFont (
                                        'Ubuntu',
                                        fontSize: 16*ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.15*ffem/fem,
                                        color: Color(0xff7c898b),
                                      ),
                                    ),
                                  ]),
                                ],
                              ),
                            ),
                          Container(
                              padding: EdgeInsets.only(right:15),
                            child:  Column(
                              children: [
                                Text(message['date']),
                                message['unRead'] != 0
                                    ? Container(
                                  padding: const EdgeInsets.all(5),
                                  decoration: const BoxDecoration(
                                    color: dVert,
                                    shape: BoxShape.circle,
                                  ),
                                  child: Text(
                                    message['unRead'].toString(),
                                    style: GoogleFonts.inter(
                                      color: Colors.white,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                )
                                    : Container(),
                              ],
                            )),
                          ],
                        ),
                        const SizedBox(height: 20),
                        Container(
                          color: Colors.grey[400],
                          height: 0.5,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}



