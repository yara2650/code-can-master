import 'package:flutter/material.dart';
//import 'page21informations.dart';
import 'package:codecansecond/logicoperation/voice.dart';
import 'package:codecansecond/logicoperation/sqlflite2.dart';

class Information15Class extends StatefulWidget{
  State<Information15Class>createState()=> _pg();
}
class _pg extends State<Information15Class> {
  Reader obg=Reader();
  SqlDb sql= SqlDb();
  late List<Map> question;
  @override
  Widget build(BuildContext buildcontext) {
    return SafeArea(
        child: Material(
            child: Container(
              //margin: EdgeInsets.only(top: 50),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage('images/informationpg.png')
                    )
                ),
                child:Column(
                  children: [
                    // Container(
                    //   margin: EdgeInsets.only(top: 50),
                    //   width: 140,
                    //   height: 50,
                    //   decoration: BoxDecoration(
                    //     color: Color(0xffE8AA9A),
                    //     borderRadius: BorderRadius.circular(31,),
                    //     boxShadow: [
                    //       BoxShadow(
                    //         color: Color(0xff000000),
                    //         offset: Offset(0, 3),
                    //         blurRadius: 4,
                    //         // spreadRadius: 2
                    //       ),
                    //     ],
                    //     // border: Border.all(width: 3,color: Color(0xffBEB1E2))
                    //   ),
                    //   child: Center(
                    //     child: Text('00:00',
                    //       style: TextStyle(color: Color(0xff000000),fontWeight: FontWeight.w400,fontSize: 30
                    //       ) ,),
                    //   ),
                    // ),
                    /////////////////////
                    Container(
                      margin: EdgeInsets.only(top: 150),
                      width: 320,
                      height: 70,
                      decoration: BoxDecoration(
                          color: Color(0xffEE8E73),
                          borderRadius: BorderRadius.circular(31,),
                          boxShadow: [
                            BoxShadow(
                              color: Color(0xff000000),
                              offset: Offset(0, 2),
                              blurRadius: 4,
                              // spreadRadius: 2
                            ),
                          ],
                          border: Border.all(width: 1,color: Color(0xffFFFFFF))
                      ),
                      child: Center(
                        child: Text('السد العالى فين ؟',
                          style: TextStyle(color: Color(0xff000000),fontWeight: FontWeight.w400,fontSize: 30
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 50,left: 10),
                      child:Image(image: AssetImage('images/information1-removebg.png'),height: 160,width:160),
                    ),
                    // Row(
                    //   mainAxisAlignment: MainAxisAlignment.center,
                    //   children: [
                    //     GestureDetector(
                    //       onTap: (){
                    //
                    //       },
                    //       child: Container(
                    //
                    //         margin: EdgeInsets.only(top: 50,right: 15),
                    //         width: 140,
                    //         height: 50,
                    //         decoration: BoxDecoration(
                    //             color: Color(0xffE8AA9A),
                    //             borderRadius: BorderRadius.circular(31,),
                    //             boxShadow: [
                    //               BoxShadow(
                    //                 color: Color(0xff000000),
                    //                 offset: Offset(0, 3),
                    //                 blurRadius: 4,
                    //                 // spreadRadius: 2
                    //               ),
                    //             ],
                    //             border: Border.all(width: 0.5,color: Color(0xffFFFFFF))
                    //         ),
                    //         child: Center(
                    //           child: Text('المنيا  ',
                    //             style: TextStyle(color: Color(0xff35333D),fontWeight: FontWeight.w400,fontSize: 30
                    //             ),
                    //           ),
                    //         ),
                    //       ),
                    //     ),
                    //     GestureDetector(
                    //       onTap: (){
                    //       },
                    //       child:Container(
                    //         margin: EdgeInsets.only(top: 50,left: 15),
                    //         width: 140,
                    //         height: 50,
                    //         decoration: BoxDecoration(
                    //             color: Color(0xffE8AA9A),
                    //             borderRadius: BorderRadius.circular(31,),
                    //             boxShadow: [
                    //               BoxShadow(
                    //                 color: Color(0xff000000),
                    //                 offset: Offset(0, 3),
                    //                 blurRadius: 4,
                    //                 // spreadRadius: 2
                    //               ),
                    //             ],
                    //             border: Border.all(width: 0.5,color: Color(0xffFFFFFF))
                    //         ),
                    //         child: Center(
                    //           child: Text('اسكندريه',
                    //             style: TextStyle(color: Color(0xff35333D),fontWeight: FontWeight.w400,fontSize: 30
                    //             ) ,
                    //           ),
                    //         ),
                    //       ),
                    //     )
                    //   ],
                    // ),
                    // Row(
                    //   mainAxisAlignment: MainAxisAlignment.center,
                    //   children: [
                    //     GestureDetector(
                    //       onTap: (){},
                    //       child:  Container(
                    //
                    //         margin: EdgeInsets.only(top: 50,right: 15),
                    //         width: 140,
                    //         height: 50,
                    //         decoration: BoxDecoration(
                    //             color: Color(0xffE8AA9A),
                    //             borderRadius: BorderRadius.circular(31,),
                    //             boxShadow: [
                    //               BoxShadow(
                    //                 color: Color(0xff000000),
                    //                 offset: Offset(0, 3),
                    //                 blurRadius: 4,
                    //                 // spreadRadius: 2
                    //               ),
                    //             ],
                    //             border: Border.all(width: 0.5,color: Color(0xffFFFFFF))
                    //         ),
                    //         child: Center(
                    //           child: Text('المنوفيه',
                    //             style: TextStyle(color: Color(0xff35333D),fontWeight: FontWeight.w400,fontSize: 30
                    //             ) ,),
                    //         ),
                    //       ),
                    //     ),
                    //     GestureDetector(
                    //       onTap: (){
                    //
                    //       },
                    //       child: Container(
                    //         margin: EdgeInsets.only(top: 50,left: 15),
                    //         width: 140,
                    //         height: 50,
                    //         decoration: BoxDecoration(
                    //             color: Color(0xffE8AA9A),
                    //             borderRadius: BorderRadius.circular(31,),
                    //             boxShadow: [
                    //               BoxShadow(
                    //                 color: Color(0xff000000),
                    //                 offset: Offset(0, 3),
                    //                 blurRadius: 4,
                    //                 // spreadRadius: 2
                    //               ),
                    //             ],
                    //             border: Border.all(width: 0.5,color: Color(0xffFFFFFF))
                    //         ),
                    //         child: Center(
                    //           child: Text('اسوان',
                    //             style: TextStyle(color: Color(0xff35333D),fontWeight: FontWeight.w400,fontSize: 30
                    //             ) ,),
                    //         ),
                    //       ),
                    //     )
                    //   ],
                    // ),
                    GestureDetector(
                        onTap: ()async{
                          question=await sql.readData("SELECT question FROM 'questiondata' WHERE department='i' AND id=13 ");
                          print(question[0]["question"]);
                          print("mmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm");
                          obg.speak(question[0]["question"]);
                        },
                        child: Container(
                          width: 280,
                          height: 80,
                          margin: EdgeInsets.only(top: 40),
                          padding: EdgeInsets.all(1),
                          child:Image(image:AssetImage('images/listeninfo.png',) ),
                        )
                    ),
                    GestureDetector(
                      onTap: (){
                        // Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                        //   return Information21Class();
                        // },));
                        Navigator.of(context).pushNamed("Information16Class");
                      },
                      child: Container(
                        margin: EdgeInsets.only(top: 60,left: 15),
                        width: 140,
                        height: 50,
                        decoration: BoxDecoration(
                            color: Color(0xffE8AA9A),
                            borderRadius: BorderRadius.circular(31,),
                            boxShadow: [
                              BoxShadow(
                                color: Color(0xff000000),
                                offset: Offset(0, 3),
                                blurRadius: 4,
                                // spreadRadius: 2
                              ),
                            ],
                            border: Border.all(width: 0.5,color: Color(0xffFFFFFF)),
                            gradient: LinearGradient(
                                colors: [
                                  Color(0xffFFBFAD),
                                  Color(0xffEF5124)
                                ],
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter
                            )
                        ),
                        child: Center(
                          child: Text('التالي',
                            style: TextStyle(color: Color(0xff35333D),fontWeight: FontWeight.w400,fontSize: 30
                            ) ,),
                        ),
                      ),
                    )
                  ],
                )

            )
        )
    );
  }
}