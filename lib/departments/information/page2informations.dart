import 'package:flutter/material.dart';
import 'package:codecansecond/logicoperation/voice.dart';
import 'package:codecansecond/logicoperation/sqlflite2.dart';
import 'package:codecansecond/departments/information/page3informationss.dart';
class Page2InformationClass extends StatefulWidget{
  State<Page2InformationClass>createState()=> _pg();
}
class _pg extends State<Page2InformationClass> {
  Reader obg=Reader();
  SqlDb sql= SqlDb();
  late List<Map> question;
  @override
  Widget build(BuildContext buildcontext) {
    return SafeArea(
        child: Material(
            // child: Container(
            //   //margin: EdgeInsets.only(top: 50),
            //     decoration: BoxDecoration(
            //         image: DecorationImage(
            //             fit: BoxFit.fill,
            //             image: AssetImage('images/informationpg.png')
            //         )
            //     ),
            //     child:Column(
            //       children: [
            //         Container(
            //           margin: EdgeInsets.only(top:MediaQuery.of(context).size.height*.15),
            //           width: MediaQuery.of(context).size.width*.8,
            //           height: MediaQuery.of(context).size.height*.08,
            //           decoration: BoxDecoration(
            //               color: Color(0xffEE8E73),
            //               borderRadius: BorderRadius.circular(31,),
            //               boxShadow: [
            //                 BoxShadow(
            //                   color: Color(0xff000000),
            //                   offset: Offset(0, 2),
            //                   blurRadius: 4,
            //                   // spreadRadius: 2
            //                 ),
            //               ],
            //               border: Border.all(width: 1,color: Color(0xffFFFFFF))
            //           ),
            //           child: Center(
            //             child: Text('ما اِسْم هَذَا اْْلاِصْبَع',
            //               style: TextStyle(color: Color(0xff000000),fontWeight: FontWeight.w400,fontSize:MediaQuery.of(context).size.width*.09
            //               ),
            //             ),
            //           ),
            //         ),
            //         Container(
            //           margin: EdgeInsets.only(top:MediaQuery.of(context).size.height*.03 ,left: MediaQuery.of(context).size.width*.03),
            //           child:Image(image: AssetImage('images/hand-removebg.png'),height:MediaQuery.of(context).size.height*.3,width:MediaQuery.of(context).size.width*.5),
            //           //Image.asset('images/information1.jpg',height: 120,width:120,),
            //         ),
            //         GestureDetector(
            //             onTap: ()async{
            //               question=await sql.readData("SELECT question FROM 'questiondata' WHERE department='i' AND id=1 ");
            //               print(question[0]["question"]);
            //               print("mmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm");
            //               obg.speak(question[0]["question"]);
            //             },
            //             child: Container(
            //               width: MediaQuery.of(context).size.width*.6,
            //               height: MediaQuery.of(context).size.height*.1,
            //               margin: EdgeInsets.only(top: MediaQuery.of(context).size.height*.05,),
            //               padding: EdgeInsets.all(1),
            //               child:Image(image:AssetImage('images/listeninfo.png',) ),
            //             )
            //         ),
            //
            //         GestureDetector(
            //           onTap: (){
            //             Navigator.of(context).push(MaterialPageRoute(builder: (v){
            //               return Information3ForgetClass();
            //                }
            //               )
            //             );
            //             //Navigator.of(context).pushNamed("Information3Class",arguments: {"nextpage":"Information3Class"});
            //           },
            //           child: Container(
            //             margin: EdgeInsets.only(top:MediaQuery.of(context).size.height*.06),
            //             width: MediaQuery.of(context).size.width*.4,
            //             height: MediaQuery.of(context).size.height*.07,
            //             decoration: BoxDecoration(
            //                 color: Color(0xffE8AA9A),
            //                 borderRadius: BorderRadius.circular(31,),
            //                 boxShadow: [
            //                   BoxShadow(
            //                     color: Color(0xff000000),
            //                     offset: Offset(0, 3),
            //                     blurRadius: 4,
            //                     // spreadRadius: 2
            //                   ),
            //                 ],
            //                 border: Border.all(width: 0.5,color: Color(0xffFFFFFF)),
            //                 gradient: LinearGradient(
            //                     colors: [
            //                       Color(0xffFFBFAD),
            //                       Color(0xffEF5124)
            //                     ],
            //                     begin: Alignment.topCenter,
            //                     end: Alignment.bottomCenter
            //                 )
            //             ),
            //             child: Center(
            //               child: Text('التالي',
            //                 style: TextStyle(color: Color(0xff35333D),
            //                     fontWeight: FontWeight.w400,fontSize: MediaQuery.of(context).size.width*.07
            //                 ) ,),
            //             ),
            //           ),
            //         )
            //       ],
            //     )
            //
            // )
          child: OrientationBuilder(
            builder: (context, orientation) {
              return orientation==Orientation.portrait
              ? _buildPortraitLayout()
              : _buildLandscapeLayout();
            },
          ),
        )
    );
  }
  Widget _buildPortraitLayout(){
    return Container(
          //margin: EdgeInsets.only(top: 50),
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage('images/informationpg.png')
                )
            ),
            child:Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top:MediaQuery.of(context).size.height*.15),
                  width: MediaQuery.of(context).size.width*.8,
                  height: MediaQuery.of(context).size.height*.08,
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
                    child: Text('ما اِسْم هَذَا اْْلاِصْبَع',
                      style: TextStyle(color: Color(0xff000000),fontWeight: FontWeight.w400,fontSize:MediaQuery.of(context).size.width*.09
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top:MediaQuery.of(context).size.height*.03 ,left: MediaQuery.of(context).size.width*.03),
                  child:Image(image: AssetImage('images/hand-removebg.png'),height:MediaQuery.of(context).size.height*.3,width:MediaQuery.of(context).size.width*.5),
                  //Image.asset('images/information1.jpg',height: 120,width:120,),
                ),
                GestureDetector(
                    onTap: ()async{
                      question=await sql.readData("SELECT question FROM 'questiondata' WHERE department='i' AND id=1 ");
                      print(question[0]["question"]);
                      print("mmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm");
                      obg.speak(question[0]["question"]);
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width*.6,
                      height: MediaQuery.of(context).size.height*.1,
                      margin: EdgeInsets.only(top: MediaQuery.of(context).size.height*.05,),
                      padding: EdgeInsets.all(1),
                      child:Image(image:AssetImage('images/listeninfo.png',) ),
                    )
                ),

                GestureDetector(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (v){
                      return Information3ForgetClass();
                       }
                      )
                    );
                    //Navigator.of(context).pushNamed("Information3Class",arguments: {"nextpage":"Information3Class"});
                  },
                  child: Container(
                    margin: EdgeInsets.only(top:MediaQuery.of(context).size.height*.06),
                    width: MediaQuery.of(context).size.width*.4,
                    height: MediaQuery.of(context).size.height*.07,
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
                        style: TextStyle(color: Color(0xff35333D),
                            fontWeight: FontWeight.w400,fontSize: MediaQuery.of(context).size.width*.07
                        ) ,),
                    ),
                  ),
                )
              ],
            )
        );
  }
  Widget _buildLandscapeLayout(){
    return Container(
          //margin: EdgeInsets.only(top: 50),
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage('images/informationpg.png')
                )
            ),
            child:Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top:MediaQuery.of(context).size.height*.05),
                  width: MediaQuery.of(context).size.width*.5,
                  height: MediaQuery.of(context).size.height*.13,
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
                    child: Text('ما اِسْم هَذَا اْْلاِصْبَع',
                      style: TextStyle(color: Color(0xff000000),fontWeight: FontWeight.w400,fontSize:MediaQuery.of(context).size.width*.03
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top:MediaQuery.of(context).size.height*.03 ,left: MediaQuery.of(context).size.width*.03),
                  child:Image(image: AssetImage('images/hand-removebg.png'),height:MediaQuery.of(context).size.height*.3,width:MediaQuery.of(context).size.width*.5),
                  //Image.asset('images/information1.jpg',height: 120,width:120,),
                ),
                GestureDetector(
                    onTap: ()async{
                      question=await sql.readData("SELECT question FROM 'questiondata' WHERE department='i' AND id=1 ");
                      print(question[0]["question"]);
                      print("mmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm");
                      obg.speak(question[0]["question"]);
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width*.7,
                      height: MediaQuery.of(context).size.height*.13,
                      margin: EdgeInsets.only(top: MediaQuery.of(context).size.height*.05,),
                      padding: EdgeInsets.all(1),
                      child:Image(image:AssetImage('images/listeninfo.png',) ),
                    )
                ),

                GestureDetector(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (v){
                      return Information3ForgetClass();
                       }
                      )
                    );
                    //Navigator.of(context).pushNamed("Information3Class",arguments: {"nextpage":"Information3Class"});
                  },
                  child: Container(
                    margin: EdgeInsets.only(top:MediaQuery.of(context).size.height*.06),
                    width: MediaQuery.of(context).size.width*.18,
                    height: MediaQuery.of(context).size.height*.08,
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
                        style: TextStyle(color: Color(0xff35333D),
                            fontWeight: FontWeight.w400,fontSize: MediaQuery.of(context).size.width*.02
                        ) ,),
                    ),
                  ),
                )
              ],
            )

        );
  }
}