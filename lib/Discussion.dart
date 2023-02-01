
import 'package:afed/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sound/public/flutter_sound_recorder.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grouped_list/grouped_list.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';
import 'package:permission_handler/permission_handler.dart';
import 'dart:io';
import 'constant.dart';
import '';
 class Discussion extends StatefulWidget  {
  final  String photo;
  final String nom;
  final bool enligne;
   Discussion({
   required this.nom,
   required this.photo,
   required this.enligne,

     } );

  @override
  State<Discussion> createState() => DiscussionState();
}

class DiscussionState extends State<Discussion> {

  @override
  Widget build (BuildContext context){
    double baseWidth = 428;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return  Scaffold(
      body:
      SafeArea(child: Container(
         color:dVert,
       width: double.infinity,
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                    appbar(fem),
                   Expanded(child:  ChatingSection()),

        ],
    )
    ),
      ),

    );//Scaffold
  }
  Container appbar(double fem) {
    double baseWidth = 428;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return
      Container(

        padding: EdgeInsets.fromLTRB(25*fem, 15*fem, 28*fem, 18*fem),
    width: double.infinity,
    child:
    Container(
        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 7*fem, 0*fem),
        height: 58*fem,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
          GestureDetector(
        onTap: (){
      Navigator.pop(context);
      },
        child:Container(
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 18*fem, 9.8*fem),
              width: 28*fem,
              height: 24.16*fem,
              child: Image.asset(
                'assets/page-2/images/arrow-left-solid-1-1.png',
                color: retour,
              ),
            )),
            Container(
              width: 59*fem,
              height: 58*fem,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage(widget.photo),
                  fit: BoxFit.cover,
                ),//DecorationImage
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(10*fem, 12*fem, 0*fem, 10*fem),
              height: double.infinity,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(

                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 94*fem, 0*fem),
                    width: 83*fem,
                    height: double.infinity,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 0*fem,
                          top: 0*fem,
                          child: Align(
                            child: SizedBox(
                              height: 23*fem,
                              child: Text(
                                widget.nom,
                                style: SafeGoogleFont (
                                  'Ubuntu',
                                  fontSize: 20*ffem,
                                  fontWeight: FontWeight.w500,
                                  height: 1.15*ffem/fem,
                                  color: Color(0xffffffff),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 0*fem,
                          top: 22*fem,
                          child: Align(
                            child: SizedBox(
                              height: 14*fem,
                              child: Text(
                                widget.enligne?'En ligne':'déconnecté',
                                style: SafeGoogleFont (
                                  'Ubuntu',
                                  fontSize: 12*ffem,
                                  fontWeight: FontWeight.w400,
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
                  Container(
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 22*fem, 80*fem),
                    width: 29*fem,
                    height: 18.75*fem,
                    child:
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.videocam,
                        color: blanc,
                        size: 30,
                      ),//Icon
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem,80*fem),
                    width: 25*fem,
                    height: 25*fem,
                    child:
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.call,
                        color:blanc,
                        size:30,
                      ),//Icon
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
    )
      );
  }

}
class ChatingSection extends StatefulWidget{

  @override
  State<ChatingSection> createState() => _StateChatingSection();
}
class _StateChatingSection extends State<ChatingSection> {
  ChatingSection ch=ChatingSection();
  final recorder =FlutterSoundRecorder();
  Future record() async {
    await recorder.startRecorder(toFile: 'audio');
  }
  Future stop() async{
    await recorder.startRecorder();   }
   @override
    void initState() {
    super.initState();
    initRecorder();
    }
    @override
    void dispose() {
                recorder.closeRecorder();
                super.dispose();
    }
    Future  initRecorder() async {
    final status= await Permission.microphone.request();
    if (status !=PermissionStatus.granted){
      throw 'Microphone permission not granted';
  }
    await recorder.openRecorder();
}

  final String senderProfile = 'assets/page-5/images/a3.jpg';
  final String receiverProfile = 'assets/page-5/images/a6.jpg';
  File? img;
  List<Message> messages=[Message(
      pic:'assets/page-5/images/a1.jpg',
      text: 'je ne sais pas',
      date: DateTime.now().subtract(Duration(days:45,minutes: 1)),
      isSenByMe:false,

    ),];
  final TextEditingController messageController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    double baseWidth = 428;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;

    return
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 15),
        width: double.infinity,
        decoration: BoxDecoration (
          color: blanc,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(40),
            topLeft: Radius.circular(40),
          ),
        ),

       child:
           Column(
           children: [
              Expanded(child:
         GroupedListView<Message,DateTime>(
           padding:const EdgeInsets.all(8),
           reverse: true,
           order:GroupedListOrder.DESC,
           elements: messages,
           groupBy: (message)=>DateTime(
             message.date.year,
             message.date.month,
             message.date.day,
             

           ),
           groupHeaderBuilder: (Message message)=>SizedBox(
             child: Center(
               child:Card(
               child:Padding(
                 padding:const EdgeInsets.all(8),
                 child:
                 Text(
                   DateFormat.yMEd().format(message.date),
                 )
               )
               )

             ),
           ),
           itemBuilder: (context,Message message)=>Align(
             alignment: message.isSenByMe?
             Alignment.centerRight:
             Alignment.centerLeft,
             child:
                 Card(
                   color: message.isSenByMe?dvert:blanc,
                   elevation: 8,
                   child:
                   Padding(
                     padding:const EdgeInsets.all(12),
                     child:
                     img!=null&&message.text==''?Image.file(message.img!,height: 160,):Text(message.text!),
                   )
                 ),

           ),

         )
              ),
                  Container(
               color: Colors.transparent,
               padding: const EdgeInsets.only(
                   top:20,
                bottom: 20,
               ),
               child:
                   Expanded(
                     child: Container(
                       height: 45,
                       width: 388*fem,
                       decoration:  BoxDecoration(
                         border: Border.all(
                            color: dVert, //color of border
                           width: 0.5, //width of border
                         ),
                         color: clair,
                         borderRadius: BorderRadius.all(Radius.circular(20*fem)),
                       ),
                       child: Row(
                         children:  [
                           Container(
                             height: 33*fem,
                             decoration:  BoxDecoration(
                               color: dVert,
                               shape: BoxShape.circle,
                             ),
                             child:
                             IconButton(
                               padding: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 0.5*fem),
                               onPressed: (){
                                 prendreImage(ImageSource.camera);
                               },
                               icon:Icon( Icons.camera_alt,size: 23*fem,),
                               color: blanc,

                                  )),
                           Expanded(
                                 child:
                                 TextField(
                                   maxLines: 6,
                                   controller: messageController,
                                   onSubmitted: (text){
                                    Message message =Message(

                                       pic: 'assets/page-5/images/a1.jpgr',
                                         text: text,
                                         date: DateTime.now(),
                                         isSenByMe: true);
                                     setState(()=>messages.add(message));
                                   },
                                   decoration: InputDecoration(
                                     hintText: 'Votre message...',
                                     suffixIcon: IconButton(onPressed: (){messageController.clear();},
                                         icon: Icon(Icons.clear,
                                         size:25,
                                         color:dVert
                                         )

                                     ),
                                     border: InputBorder.none,
                                   ),
                                 ),
                               ),
                           Container(
                              height: 33*fem,
                              child:Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                              children:[

                                GestureDetector(
                                  onTap: ()async{
                                    if(recorder.isRecording){
                                      await stop();
                                    } else{
                                      await record();
                                    }

                                  },
                                  child:Icon(
                                    recorder.isRecording?
                                    Icons.stop :
                                    Icons.keyboard_voice,
                                    size: 25.0,color: dVert,),
                                ),
                                GestureDetector(
                                  onTap: (){ prendreImage(ImageSource.gallery);},
                                  child:Icon( Icons.image,size: 25.0,color: dVert,),
                                ),
                                 ])

                          ),
                           Container(

                               height: 33*fem,
                               decoration:  BoxDecoration(
                                 color: dVert,
                                 shape: BoxShape.circle,
                               ),
                               child:
                               IconButton(
                                 padding: EdgeInsets.fromLTRB(1*fem, 0*fem, 0*fem, 0.5*fem),
                                 onPressed: () {
                                   Message message =Message(
                                       img:img,
                                       pic:'assets/page-5/images/a1.jpg',
                                       text: messageController.text,
                                       date: DateTime.now(),
                                       isSenByMe: true);
                                   messageController.text!=''?setState(()=>messages.add(message)):print("message vide");
                                   messageController.clear();
                                 },
                                 icon:Icon( Icons.send,size: 21*fem,),
                                 color: blanc,

                               )),
                               ],
                                )
                      ),
                   ),
    )

           ],
           ),

    );
  }
  Future prendreImage(ImageSource source) async{
    try {
      final img = await ImagePicker().pickImage(
          source: source);
      if (img == null) return;
      final imgtemp = File(img.path);
      setState(() {
        this.img = imgtemp;
        Message message =Message(
            img:this.img,
            pic: 'assets/page-5/images/a1.jpgr',
            text: '',
            date: DateTime.now(),
            isSenByMe: true);
        setState(()=>messages.add(message));
      });
    } catch (e){
      print("impossible d'importer la photo: $e");
    }
  }
}

  class Message{
  File? img;
  String pic;
   String? text='';
   DateTime date;
   bool isSenByMe;
  Message({
     this.img,
    required this.pic,
      this.text,
    required this.date,
    required this.isSenByMe,
});
}
