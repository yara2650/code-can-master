import 'package:flutter/material.dart';
import 'page4understand.dart';
import 'package:codecansecond/logicoperation/voice.dart';
import 'package:codecansecond/logicoperation/sqlflite2.dart';
class Page3understandClass extends StatefulWidget{
  State<Page3understandClass>createState()=> _pg();
}
class _pg extends State<Page3understandClass> {
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
             child:OrientationBuilder(builder: (context, orientation) {
               return orientation== Orientation.portrait
                   ?_buildPortraitLayout()
                   : _buildLandscapeLayout();
             },),

          ),
        )
    );
  }
  Widget _buildPortraitLayout(){
    return Column(
              children: [
                SizedBox(height:MediaQuery.of(context).size.height*.03,),
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
                SizedBox(height: MediaQuery.of(context).size.height*.03,),
                Image.asset('images/smilicon.png',height:MediaQuery.of(context).size.height*.2,width:MediaQuery.of(context).size.width*.3 ,),
                SizedBox(height: MediaQuery.of(context).size.height*.03,),
                Column(
                  ////إذا تم أرسالك لشراء خبز أو شيء ما، وقال لك البقال إن الخبز ُقد نفذ أو أنه لا يملك تلك السلعة، ماذا ستفعل
                  children: [
                    Row(

                      mainAxisAlignment:MainAxisAlignment.center ,
                      children: [
                        Text("إذا تم أرسالك لشراء خبز",style: TextStyle(fontSize:MediaQuery.of(context).size.width*.08,color: Color(0xff543686) ),),
                        Text("(٣)",style: TextStyle(fontSize:MediaQuery.of(context).size.width*.08,color: Color(0xff543686)  )),
                      ],
                    ),

                    Center(
                      child: Text("أو شيء ما، وقال لك",style: TextStyle(fontSize:MediaQuery.of(context).size.width*.08,color: Color(0xff543686)  )),
                    ),
                    Center(
                      child: Text("البقال إن الخبز ُقد نفذ أو أنه",style: TextStyle(fontSize:MediaQuery.of(context).size.width*.08,color: Color(0xff543686)  )),
                    ),
                    Center(
                      child: Text("لا يملك تلك السلعة",style: TextStyle(fontSize:MediaQuery.of(context).size.width*.08,color: Color(0xff543686)  )),
                    ),
                    Center(
                      child: Text(" ماذا ستفعل"+"؟" ,style: TextStyle(fontSize:MediaQuery.of(context).size.width*.08,color: Color(0xff543686)  )),
                    )
                  ],
                ),
                // Container(
                //     width: 315,
                //     height: 50,
                //     decoration: BoxDecoration(
                //       color: Color(0xffBEB1E2),
                //       borderRadius: BorderRadius.circular(31,),
                //       boxShadow: [
                //         BoxShadow(
                //           color: Color(0xffA3A3CA),
                //           offset: Offset(-5,10),
                //           blurRadius: 5,
                //           // spreadRadius: 2
                //         ),
                //       ],
                //       border: Border.all(width: 1 ,color: Color(0xff745C9C)),
                //
                //     ),
                //     child:Container(
                //       width: 150,
                //       // height: 250,
                //       child:Row(
                //         children: [
                //           Padding(
                //             padding: EdgeInsets.only(left: 30),
                //             child:Image(image: AssetImage('images/headphone2.png'),width: 25,height: 25,) ,
                //           ),
                //           Slider(value: .5, onChanged: (val){},inactiveColor: Color(0xffD9D9D9),activeColor:Color(0xff8B2681) ),
                //           //IconButton(onPressed: (){}, icon: Icon(Icons.play_circle_outlined),color:Color(0xff8B2681),),
                //           Padding(
                //               padding: EdgeInsets.only(left: 5),
                //               child:GestureDetector(onTap: (){},
                //                 child: Image.asset('images/player.png',width: 30,height: 30,),
                //               )
                //           )
                //         ],
                //       ),
                //     )
                //
                // ),
                GestureDetector(
                    onTap: ()async{
                      question=await sql.readData("SELECT question FROM 'questiondata' WHERE department='u' AND id=3 ");
                      print(question[0]["question"]);
                      print("mmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm");
                      obg.speak(question[0]["question"]);
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width*.6,
                      height:MediaQuery.of(context).size.height*.1,
                      margin: EdgeInsets.only(top: MediaQuery.of(context).size.height*.05),
                      padding: EdgeInsets.all(1),
                      child:Image(image:AssetImage('images/listen3.png',) ),
                    )
                ),
                SizedBox(height: MediaQuery.of(context).size.height*.05,),
                GestureDetector(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                      return Page4understandClass();
                    },));
                  },
                  child: Container(
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
  Widget _buildLandscapeLayout() {
     return  Column(
              children: [
                SizedBox(height:MediaQuery.of(context).size.height*.03,),
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
                SizedBox(height: MediaQuery.of(context).size.height*.03,),
                Image.asset('images/smilicon.png',height:MediaQuery.of(context).size.height*.2,width:MediaQuery.of(context).size.width*.3 ,),
                SizedBox(height: MediaQuery.of(context).size.height*.03,),
                Column(
        //إذا تم أرسالك لشراء خبز أو شيء ما، وقال لك البقال إن الخبز ُقد نفذ أو أنه لا يملك تلك السلعة، ماذا ستفعل
                  children: [
                    Row(
                      mainAxisAlignment:MainAxisAlignment.center ,
                      children: [
                        Text("إذا تم أرسالك لشراء خبز أو شيء ما، وقال لك البقال إن الخبز",style: TextStyle(fontSize:MediaQuery.of(context).size.width*.03,color: Color(0xff543686) ),),
                        Text("(٣)",style: TextStyle(fontSize:MediaQuery.of(context).size.width*.03,color: Color(0xff543686)  )),
                      ],
                    ),
                    Center(
                      child: Text("ُقد نفذ أو أنه لا يملك تلك السلعة، ماذا ستفعل"+"؟",style: TextStyle(fontSize:MediaQuery.of(context).size.width*.03,color: Color(0xff543686)  )),
                    ),
                  ],
                ),
                // Container(
                //     width: 315,
                //     height: 50,
                //     decoration: BoxDecoration(
                //       color: Color(0xffBEB1E2),
                //       borderRadius: BorderRadius.circular(31,),
                //       boxShadow: [
                //         BoxShadow(
                //           color: Color(0xffA3A3CA),
                //           offset: Offset(-5,10),
                //           blurRadius: 5,
                //           // spreadRadius: 2
                //         ),
                //       ],
                //       border: Border.all(width: 1 ,color: Color(0xff745C9C)),
                //
                //     ),
                //     child:Container(
                //       width: 150,
                //       // height: 250,
                //       child:Row(
                //         children: [
                //           Padding(
                //             padding: EdgeInsets.only(left: 30),
                //             child:Image(image: AssetImage('images/headphone2.png'),width: 25,height: 25,) ,
                //           ),
                //           Slider(value: .5, onChanged: (val){},inactiveColor: Color(0xffD9D9D9),activeColor:Color(0xff8B2681) ),
                //           //IconButton(onPressed: (){}, icon: Icon(Icons.play_circle_outlined),color:Color(0xff8B2681),),
                //           Padding(
                //               padding: EdgeInsets.only(left: 5),
                //               child:GestureDetector(onTap: (){},
                //                 child: Image.asset('images/player.png',width: 30,height: 30,),
                //               )
                //           )
                //         ],
                //       ),
                //     )
                //
                // ),
                GestureDetector(
                    onTap: ()async{
                      question=await sql.readData("SELECT question FROM 'questiondata' WHERE department='u' AND id=3 ");
                      print(question[0]["question"]);
                      print("mmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm");
                      obg.speak(question[0]["question"]);
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width*.7,
                      height:MediaQuery.of(context).size.height*.15,
                      margin: EdgeInsets.only(top: MediaQuery.of(context).size.height*.05),
                      padding: EdgeInsets.all(1),
                      child:Image(image:AssetImage('images/listen3.png',) ),
                    )
                ),
                SizedBox(height: MediaQuery.of(context).size.height*.05,),
                GestureDetector(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                      return Page4understandClass();
                    },));
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width*.3,
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