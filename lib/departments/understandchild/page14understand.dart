import 'package:flutter/material.dart';
import 'package:codecansecond/departments/information/page1information.dart';
import 'package:codecansecond/logicoperation/voice.dart';
import 'package:codecansecond/logicoperation/sqlflite2.dart';
class Page14understandClass extends StatefulWidget{
  State<Page14understandClass>createState()=> _pg();
}
class _pg extends State<Page14understandClass> {
  Reader obg=Reader();
  SqlDb sql= SqlDb();
  late List<Map> question;
  @override
  Widget build(BuildContext buildcontext) {
    return SafeArea(
        child: Material(
          child: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage('images/background2.jpeg')
                )
            ),
            // child: Column(
            //   children: [
            //     SizedBox(height: MediaQuery.of(context).size.height*.1,),
            //     // Container(
            //     //   width: 140,
            //     //   height: 50,
            //     //   decoration: BoxDecoration(
            //     //       color: Color(0xffDDEAF8),
            //     //       borderRadius: BorderRadius.circular(31,),
            //     //       boxShadow: [
            //     //         BoxShadow(
            //     //           color: Color(0xff9CC7F2),
            //     //           offset: Offset(0, 5),
            //     //           blurRadius: 4,
            //     //           // spreadRadius: 2
            //     //         ),
            //     //       ],
            //     //       border: Border.all(width: 3,color: Color(0xffBEB1E2))
            //     //   ),
            //     //   child: Center(
            //     //     child: Text('00:00',
            //     //       style: TextStyle(color: Color(0xff235B7F),fontWeight: FontWeight.w400,fontSize: 30
            //     //       ) ,),
            //     //   ),
            //     // ),
            //     SizedBox(height:MediaQuery.of(context).size.height*.05,),
            //     Image.asset('images/smilicon.png',height: MediaQuery.of(context).size.height*.2,width:MediaQuery.of(context).size.width*.3 ,),
            //     SizedBox(height:MediaQuery.of(context).size.height*.05,),
            //     Column(
            //       children: [
            //         Row(
            //           //(١٤) ليه الواحد لازم يحافظ على وعده ؟
            //           mainAxisAlignment:MainAxisAlignment.center ,
            //           children: [
            //             Text("ليه الواحد لازم يحافظ",style: TextStyle(fontSize:30,color: Color(0xff543686) ),),
            //             Text("(١٤)",style: TextStyle(fontSize:30,color: Color(0xff543686)  )),
            //           ],
            //         ),
            //         Center(
            //           child: Text("على وعده "+"؟",style: TextStyle(fontSize:30,color: Color(0xff543686)  )),
            //         ),
            //       ],
            //     ),
            //     GestureDetector(
            //         onTap: ()async{
            //           question=await sql.readData("SELECT question FROM 'questiondata' WHERE department='u' AND id=14 ");
            //           print(question[0]["question"]);
            //           print("mmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm");
            //           obg.speak(question[0]["question"]);
            //         },
            //         child: Container(
            //           width: MediaQuery.of(context).size.width*.6,
            //           height: MediaQuery.of(context).size.height*.1,
            //           margin: EdgeInsets.only(top: MediaQuery.of(context).size.height*.05,),
            //           padding: EdgeInsets.all(1),
            //           child:Image(image:AssetImage('images/listen3.png',) ),
            //         )
            //     ),
            //
            //     SizedBox(height:MediaQuery.of(context).size.height*.1,),
            //     GestureDetector(
            //       onTap: (){
            //         Navigator.of(context).push(MaterialPageRoute(builder: (context) {
            //           return Information1Class();
            //         },));
            //       },
            //       child:  Container(
            //         width: MediaQuery.of(context).size.width*.4,
            //         height: MediaQuery.of(context).size.height*.07,
            //         decoration: BoxDecoration(
            //
            //             gradient: LinearGradient(
            //               colors: [
            //                 Color(0xffDD9FD5),
            //                 Color(0xff8DCEF6),
            //               ],
            //               begin: Alignment.topCenter,
            //               end: Alignment.bottomCenter,
            //             ),
            //             borderRadius: BorderRadius.circular(31,),
            //             boxShadow: [
            //               BoxShadow(
            //                 color: Color(0xff252033),
            //                 offset: Offset(0,4),
            //                 blurRadius: 4,
            //               )
            //             ],
            //             border: Border.all(color: Color(0xff3C5E80),width: 2)
            //         ),
            //         child: Center(
            //           child: Text(
            //             'التالى',
            //             style: TextStyle(
            //               color: Color(0xff745C9C),
            //               fontSize: 30,
            //               fontWeight: FontWeight.w400,
            //             ),
            //           ),
            //         ),
            //       ),
            //
            //     )
            //                  ],
            // ),
            child:OrientationBuilder(
              builder: (context, orientation) {
                return orientation==Orientation.portrait
                    ? _buildPortraitLayout()
                    : _buildLandscapeLayout();
              },
            )
          ),
        )
    );
  }
  Widget _buildPortraitLayout(){
    return Column(
          children: [
            SizedBox(height: MediaQuery.of(context).size.height*.1,),
            // Container(
            //   width: 140,
            //   height: 50,
            //   decoration: BoxDecoration(
            //       color: Color(0xffDDEAF8),
            //       borderRadius: BorderRadius.circular(31,),
            //       boxShadow: [
            //         BoxShadow(
            //           color: Color(0xff9CC7F2),
            //           offset: Offset(0, 5),
            //           blurRadius: 4,
            //           // spreadRadius: 2
            //         ),
            //       ],
            //       border: Border.all(width: 3,color: Color(0xffBEB1E2))
            //   ),
            //   child: Center(
            //     child: Text('00:00',
            //       style: TextStyle(color: Color(0xff235B7F),fontWeight: FontWeight.w400,fontSize: 30
            //       ) ,),
            //   ),
            // ),
            SizedBox(height:MediaQuery.of(context).size.height*.05,),
            Image.asset('images/smilicon.png',height: MediaQuery.of(context).size.height*.2,width:MediaQuery.of(context).size.width*.3 ,),
            SizedBox(height:MediaQuery.of(context).size.height*.05,),
            Column(
              children: [
                Row(
                  //(١٤)  //(١٤) لماذا يجب على الفرد الحفاظ على وعده؟
                  mainAxisAlignment:MainAxisAlignment.center ,
                  children: [
                    Text("لماذا يجب على الفرد الحفاظ",style: TextStyle(fontSize:30,color: Color(0xff543686) ),),
                    Text("(١٤)",style: TextStyle(fontSize:30,color: Color(0xff543686)  )),
                  ],
                ),
                Center(
                  child: Text("على وعده "+"؟",style: TextStyle(fontSize:30,color: Color(0xff543686)  )),
                ),
              ],
            ),
            GestureDetector(
                onTap: ()async{
                  question=await sql.readData("SELECT question FROM 'questiondata' WHERE department='u' AND id=14 ");
                  print(question[0]["question"]);
                  print("mmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm");
                  obg.speak(question[0]["question"]);
                },
                child: Container(
                  width: MediaQuery.of(context).size.width*.6,
                  height: MediaQuery.of(context).size.height*.1,
                  margin: EdgeInsets.only(top: MediaQuery.of(context).size.height*.05,),
                  padding: EdgeInsets.all(1),
                  child:Image(image:AssetImage('images/listen3.png',) ),
                )
            ),

            SizedBox(height:MediaQuery.of(context).size.height*.1,),
            GestureDetector(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                  return Information1Class();
                },));
              },
              child:  Container(
                width: MediaQuery.of(context).size.width*.4,
                height: MediaQuery.of(context).size.height*.07,
                decoration: BoxDecoration(

                    gradient: LinearGradient(
                      colors: [
                        Color(0xffDD9FD5),
                        Color(0xff8DCEF6),
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                    borderRadius: BorderRadius.circular(31,),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xff252033),
                        offset: Offset(0,4),
                        blurRadius: 4,
                      )
                    ],
                    border: Border.all(color: Color(0xff3C5E80),width: 2)
                ),
                child: Center(
                  child: Text(
                    'التالى',
                    style: TextStyle(
                      color: Color(0xff745C9C),
                      fontSize: 30,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),

            )
          ],
        );
  }
  Widget _buildLandscapeLayout(){
    return Column(
          children: [
            SizedBox(height: MediaQuery.of(context).size.height*.05,),
            // Container(
            //   width: 140,
            //   height: 50,
            //   decoration: BoxDecoration(
            //       color: Color(0xffDDEAF8),
            //       borderRadius: BorderRadius.circular(31,),
            //       boxShadow: [
            //         BoxShadow(
            //           color: Color(0xff9CC7F2),
            //           offset: Offset(0, 5),
            //           blurRadius: 4,
            //           // spreadRadius: 2
            //         ),
            //       ],
            //       border: Border.all(width: 3,color: Color(0xffBEB1E2))
            //   ),
            //   child: Center(
            //     child: Text('00:00',
            //       style: TextStyle(color: Color(0xff235B7F),fontWeight: FontWeight.w400,fontSize: 30
            //       ) ,),
            //   ),
            // ),
            //SizedBox(height:MediaQuery.of(context).size.height*.05,),
            Image.asset('images/smilicon.png',height: MediaQuery.of(context).size.height*.2,width:MediaQuery.of(context).size.width*.5 ,),
            SizedBox(height:MediaQuery.of(context).size.height*.01,),
            Column(
              children: [
                Row(
                  //(١٤) لماذا يجب على الفرد الحفاظ على وعده
                  mainAxisAlignment:MainAxisAlignment.center ,
                  children: [
                    Text("لماذا يجب على الفرد الحفاظ",style: TextStyle(fontSize:MediaQuery.of(context).size.width*.03,color: Color(0xff543686) ),),
                    Text("(١٤)",style: TextStyle(fontSize:MediaQuery.of(context).size.width*.03,color: Color(0xff543686)  )),
                  ],
                ),
                Center(
                  child: Text("على وعده"+"؟",style: TextStyle(fontSize:MediaQuery.of(context).size.width*.03,color: Color(0xff543686)  )),
                ),
              ],
            ),
            GestureDetector(
                onTap: ()async{
                  question=await sql.readData("SELECT question FROM 'questiondata' WHERE department='u' AND id=14 ");
                  print(question[0]["question"]);
                  print("mmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm");
                  obg.speak(question[0]["question"]);
                },
                child: Container(
                  width: MediaQuery.of(context).size.width*.5,
                  height: MediaQuery.of(context).size.height*.14,
                  margin: EdgeInsets.only(top: MediaQuery.of(context).size.height*.05,),
                  padding: EdgeInsets.all(1),
                  child:Image(image:AssetImage('images/listen3.png',) ),
                )
            ),

            SizedBox(height:MediaQuery.of(context).size.height*.1,),
            GestureDetector(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                  return Information1Class();
                },));
              },
              child:  Container(
                width: MediaQuery.of(context).size.width*.25,
                height: MediaQuery.of(context).size.height*.1,
                decoration: BoxDecoration(

                    gradient: LinearGradient(
                      colors: [
                        Color(0xffDD9FD5),
                        Color(0xff8DCEF6),
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                    borderRadius: BorderRadius.circular(31,),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xff252033),
                        offset: Offset(0,4),
                        blurRadius: 4,
                      )
                    ],
                    border: Border.all(color: Color(0xff3C5E80),width: 2)
                ),
                child: Center(
                  child: Text(
                    'التالى',
                    style: TextStyle(
                      color: Color(0xff745C9C),
                      fontSize:MediaQuery.of(context).size.width*.03,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
            )
         ],
        );
  }
}