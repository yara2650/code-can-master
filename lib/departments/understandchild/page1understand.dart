import 'package:flutter/material.dart';
import 'page2understand.dart';
import 'package:codecansecond/logicoperation/voice.dart';
import 'package:codecansecond/logicoperation/sqlflite2.dart';
class Page1Class extends StatefulWidget{
  State<Page1Class>createState()=> _pg();
}
class _pg extends State<Page1Class> {
  Reader obg=Reader();
  SqlDb sql= SqlDb();
  late List<Map> question;
  late double widths;
  late double heights;
  @override
  Widget build(BuildContext buildcontext) {
      return OrientationBuilder(builder: (context, orientation) {
        if(orientation==Orientation.portrait){
          widths=MediaQuery.of(context).size.width;
          heights=MediaQuery.of(context).size.height;
          print("widths${widths}");
          print("heights${heights}");
          print("aaaaaaaa");
        }else if(orientation==Orientation.landscape){
          widths=MediaQuery.of(context).size.width;
          heights=MediaQuery.of(context).size.height;
          print("widths${widths}");
          print("heights${heights}");
          print("bbbbbbbbb");
        }
        return SafeArea(
          child: Material(
            child: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage('images/background2.jpeg')
                  )
              ),
              child:orientation == Orientation.portrait
                  ? _buildPortraitLayout()
                  : _buildLandscapeLayout(),

            ),
          )
      );
    },);
  }
  Widget _buildPortraitLayout() {
    return  Column(
          children: [
            SizedBox(height:heights*.1,),
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
            SizedBox(height:heights*.05,),
            Image.asset('images/smilicon.png',height:heights*.2,width:widths*.3 ,),
            SizedBox(height:heights*.05,),
            Container(
             // height:heights*.15 ,
              child: Column(
                children: [

                  Row(
                    mainAxisAlignment:MainAxisAlignment.center ,
                    children: [//
                      Text("ذا جُرح إصبعك",style: TextStyle(fontSize:widths*.08,color: Color(0xff543686) ),),
                      Text("(1)",style: TextStyle(fontSize:widths*.08,color: Color(0xff543686)  )),
                    ],
                  ),
                  Center(
                    child: Text("ماذا ستفعل"+"؟",style: TextStyle(fontSize:30,color: Color(0xff543686)  )),
                  ),
                ],
              ),
            ),
            // Container(
            //     width: 315,
            //     height: 50,
            //     margin: EdgeInsets.only(top: 60),
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
            //      // height: 250,
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
            //               child: Image.asset('images/player.png',width: 30,height: 30,),
            //               )
            //           )
            //         ],
            //       ),
            //     )
            //
            // ),

            // GestureDetector(
            //
            //     onTap: (){
            //       // Navigator.of(context).push(MaterialPageRoute(builder: (v){
            //       //   return AnswerInformation4Class();
            //       // }));
            //       Navigator.of(context).pushNamed("Information4Class");
            //     },
            //
            //    // child: Image(image: AssetImage("images/listen.jpg"),)
            //   child: Container(
            //     margin: EdgeInsets.only(top: 50,left: 15),
            //     width: 200,
            //     height: 50,
            //
            //     child: CircleAvatar(
            //     //radius:,
            //     backgroundImage: AssetImage('images/listen2.png',),
            //   ),
            //   ),
            // ),
            // Container(
            //   width: 220,
            //   height: 80,
            //   margin: EdgeInsets.only(top: 40),
            //   padding: EdgeInsets.all(1),
            //   // decoration: BoxDecoration(
            //   //     color: Color(0xff0A0E6D),
            //   //     shape: BoxShape.circle,
            //   //     boxShadow: [
            //   //       BoxShadow(
            //   //           color: Color(0xff235B7F),
            //   //           blurRadius: 4,
            //   //           spreadRadius: 0,
            //   //           offset: Offset(
            //   //               -2,6
            //   //           )
            //   //       ),
            //   //     ]
            //   // ),
            //   child:Image(image:AssetImage('images/listen3.png',) ),
            //   // CircleAvatar(
            //   //   radius: 1,
            //   //   backgroundImage: ,
            //   // ),
            // ),
            GestureDetector(
                onTap: ()async{
                  question=await sql.readData("SELECT question FROM 'questiondata' WHERE department='u' AND id=1 ");
                  print(question[0]["question"]);
                  print("mmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm");
                  obg.speak(question[0]["question"]);
                },
                child: Container(
                  width: widths*.6,
                  height:heights*.1,
                  margin: EdgeInsets.only(top: heights*.05,),
                  padding: EdgeInsets.all(1),
                  child:Image(image:AssetImage('images/listen3.png',) ),
                )
            ),
            SizedBox(height:heights*.1,),
            GestureDetector(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                  return Page2understandClass();
                },));
              },
              child: Container(
                width: widths*.4,
                height: heights*.07,
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
                      fontSize:widths*.08,
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
    return Column(
          children: [
            SizedBox(height:heights*.05,),
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
            //SizedBox(height:heights*.05,),
            Image.asset('images/smilicon.png',height:heights*.2,width:widths*.5,),
            SizedBox(height:heights*.01,),
            Container(
             // height:heights*.15 ,
              child: Column(
                children: [

                  Row(
                    mainAxisAlignment:MainAxisAlignment.center ,
                    children: [//إذا جُرح إصبعك، ماذا ستفعل
                      Text("إذا جُرح إصبعك",style: TextStyle(fontSize:widths*.03,color: Color(0xff543686) ),),
                      Text("(1)",style: TextStyle(fontSize:widths*.03,color: Color(0xff543686)  )),
                    ],
                  ),
                  Center(
                    child: Text("ماذا ستفعل"+"؟",style: TextStyle(fontSize:widths*.03,color: Color(0xff543686)  )),
                  ),
                ],
              ),
            ),
            // Container(
            //     width: 315,
            //     height: 50,
            //     margin: EdgeInsets.only(top: 60),
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
            //      // height: 250,
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
            //               child: Image.asset('images/player.png',width: 30,height: 30,),
            //               )
            //           )
            //         ],
            //       ),
            //     )
            //
            // ),

            // GestureDetector(
            //
            //     onTap: (){
            //       // Navigator.of(context).push(MaterialPageRoute(builder: (v){
            //       //   return AnswerInformation4Class();
            //       // }));
            //       Navigator.of(context).pushNamed("Information4Class");
            //     },
            //
            //    // child: Image(image: AssetImage("images/listen.jpg"),)
            //   child: Container(
            //     margin: EdgeInsets.only(top: 50,left: 15),
            //     width: 200,
            //     height: 50,
            //
            //     child: CircleAvatar(
            //     //radius:,
            //     backgroundImage: AssetImage('images/listen2.png',),
            //   ),
            //   ),
            // ),
            // Container(
            //   width: 220,
            //   height: 80,
            //   margin: EdgeInsets.only(top: 40),
            //   padding: EdgeInsets.all(1),
            //   // decoration: BoxDecoration(
            //   //     color: Color(0xff0A0E6D),
            //   //     shape: BoxShape.circle,
            //   //     boxShadow: [
            //   //       BoxShadow(
            //   //           color: Color(0xff235B7F),
            //   //           blurRadius: 4,
            //   //           spreadRadius: 0,
            //   //           offset: Offset(
            //   //               -2,6
            //   //           )
            //   //       ),
            //   //     ]
            //   // ),
            //   child:Image(image:AssetImage('images/listen3.png',) ),
            //   // CircleAvatar(
            //   //   radius: 1,
            //   //   backgroundImage: ,
            //   // ),
            // ),
            GestureDetector(
                onTap: ()async{
                  question=await sql.readData("SELECT question FROM 'questiondata' WHERE department='u' AND id=1 ");
                  print(question[0]["question"]);
                  print("mmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm");
                  obg.speak(question[0]["question"]);
                },
                child: Container(
                  width: widths*.3,
                  height: heights*.1,
                  margin: EdgeInsets.only(top: heights*.05,),
                  padding: EdgeInsets.all(1),
                  child:Image(image:AssetImage('images/listen3.png',) ),
                )
            ),
            SizedBox(height:heights*.05,),
            GestureDetector(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                  return Page2understandClass();
                },));
              },
              child: Container(
                width: widths*.3,
                height: heights*.1,
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
                      fontSize:widths*.03,
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