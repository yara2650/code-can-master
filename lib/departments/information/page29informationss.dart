import 'package:flutter/material.dart';
//import 'page26informations.dart';
import 'package:codecansecond/logicoperation/voice.dart';
import 'package:codecansecond/logicoperation/sqlflite2.dart';

class Information29Class extends StatefulWidget{
  State<Information29Class>createState()=> _pg();
}
class _pg extends State<Information29Class> {
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
                    SizedBox(height: 90,),
                    Container(
                      margin: EdgeInsets.only(top: 50),
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
                        child: Text('كام المسافة بين مصر وإسكندرية ؟',
                          style: TextStyle(color: Color(0xff000000),fontWeight: FontWeight.w400,fontSize: 20
                          ),
                        ),
                      ),
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
                    //           child: Text('400-300 كيلو ',
                    //             style: TextStyle(color: Color(0xff35333D),fontWeight: FontWeight.w400,fontSize: 20
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
                    //           child: Text('200-250 كيلو',
                    //             style: TextStyle(color: Color(0xff35333D),fontWeight: FontWeight.w400,fontSize: 20
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
                    //           child: Text('20-25 كيلو',
                    //             style: TextStyle(color: Color(0xff35333D),fontWeight: FontWeight.w400,fontSize: 20
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
                    //           child: Text('400-500 كيلو',
                    //             style: TextStyle(color: Color(0xff35333D),fontWeight: FontWeight.w400,fontSize: 20
                    //             ) ,),
                    //         ),
                    //       ),
                    //     )
                    //   ],
                    // ),
                    Container(
                      margin: EdgeInsets.only(top: 50,left: 10),
                      child:Image(image: AssetImage('images/information1-removebg.png'),height: 160,width:160),
                    ),
                    GestureDetector(
                        onTap: ()async{
                          question=await sql.readData("SELECT question FROM 'questiondata' WHERE department='i' AND id=26 ");
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

                      onTap: ()async{
                        List<Map> question=await sql.readData("SELECT grade , answer FROM 'questiondata' WHERE department='i' AND id=26 ");
                        int grade=question[0]["grade"];
                        String answer=question[0]["answer"];
                        print(grade);
                        print(answer);
                        print("mmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm");
                        // obg.speak(question[0]["question"]);
                        Navigator.of(context).pushNamed("ChoiceInformation1",
                            arguments: {"nextpage":"Information30Class","grade":grade,"answer":answer});
                      },
                      child: Container(
                        margin: EdgeInsets.only(top:60,left: 15),
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