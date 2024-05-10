import 'package:flutter/material.dart';
//import 'page28informations.dart';
class Information32Class extends StatefulWidget{
  State<Information32Class>createState()=> _pg();
}
class _pg extends State<Information32Class> {
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
                    /////////////////////
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
                        child: Text('السنة فيها كام يوم ؟',
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
                    //           child: Text('365',
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
                    //           child: Text('260',
                    //             style: TextStyle(color: Color(0xff35333D),fontWeight: FontWeight.w400,fontSize:30
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
                    //           child: Text('200',
                    //             style: TextStyle(color: Color(0xff35333D),fontWeight: FontWeight.w400,fontSize:30
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
                    //           child: Text('300',
                    //             style: TextStyle(color: Color(0xff35333D),fontWeight: FontWeight.w400,fontSize: 30
                    //             ) ,),
                    //         ),
                    //       ),
                    //     )
                    //   ],
                    // ),
                    Container(
                        width: 315,
                        height: 50,
                        margin: EdgeInsets.only(top: 60),
                        decoration: BoxDecoration(
                            color: Color(0xffE8AA9A),
                            borderRadius: BorderRadius.circular(31,),
                            boxShadow: [
                              BoxShadow(
                                color: Color(0xffFFCBA8),
                                offset: Offset(0, 1),
                                blurRadius: 5,
                                // spreadRadius: 2
                              ),
                            ],
                            border: Border.all(width: 1 ,color: Color(0xffFFFFFF)),
                            gradient: LinearGradient(
                                colors: [
                                  Color(0xffFFBFAD),
                                  Color(0xffF16A45)
                                ],
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter
                            )
                        ),
                        child:Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 15),
                              child:  Image(image: AssetImage('images/headphone.png'),width: 45,height: 45,),
                            ),
                            Slider(value: 1, onChanged: (val){},inactiveColor: Color(0xffFFFFFF),activeColor:Color(0xffFFFFFF),),
                            IconButton(onPressed: (){}, icon: Icon(Icons.play_circle_outlined),color:Color(0xffFFFFFF),)
                          ],
                        )
                    ),
                    GestureDetector(
                      onTap: (){
                        // Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                        //   return Information28Class();
                        // },));
                        Navigator.of(context).pushNamed("ChoiceInformation1",arguments: {"nextpage":"Information32Class"});
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