import 'package:flutter/material.dart';
//import 'page2similar.dart';
import 'package:codecansecond/logicoperation/voice.dart';
import 'package:codecansecond/logicoperation/sqlflite2.dart';
class Similar2Class extends StatefulWidget{
  State<Similar2Class>createState()=> _pg();
}
class _pg extends State<Similar2Class> {
  Reader obg=Reader();
  SqlDb sql= SqlDb();
  late List<Map> question;
  @override
  Widget build(BuildContext buildcontext) {
    return SafeArea(
        child: Material(

            child:OrientationBuilder(
              builder: (context, orientation) {
                return orientation == Orientation.portrait
                    ? _buildPortraitLayout()
                    : _buildLandscapeLayout();
              },
            )
        )
    );
  }
  Widget _buildPortraitLayout(){
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage('images/similarbg.png')
          )
      ),
      child: Column(
        children: [

          SizedBox(height: MediaQuery.of(context).size.height*.1,),
          Column(
            children: [
              Row(
                mainAxisAlignment:MainAxisAlignment.center ,
                children: [
                  Text("ما هو الشبه بين ",style: TextStyle(fontSize:MediaQuery.of(context).size.width*.09,color: Color(0xff3A2725),fontWeight: FontWeight.w400 ),),
                  Text("(1)",style: TextStyle(fontSize:MediaQuery.of(context).size.width*.09,color: Color(0xff3A2725),fontWeight: FontWeight.w400 )),
                ],
              ),
              //
              Center(
                child: Text("البرتقال والموز؟",style: TextStyle(fontSize:MediaQuery.of(context).size.width*.09,color: Color(0xff3A2725),fontWeight: FontWeight.w400 )),
              ),
            ],
          ),
          SizedBox(height:MediaQuery.of(context).size.width*.05,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset('images/panana.png',height:MediaQuery.of(context).size.height*.15,width:MediaQuery.of(context).size.width*.3,),
              Image.asset('images/orange.png',height:MediaQuery.of(context).size.height*.2,width:MediaQuery.of(context).size.width*.35 ,),
            ],
          )
          ,SizedBox(height: MediaQuery.of(context).size.height*.05,),
          GestureDetector(
              onTap: ()async{
                question=await sql.readData("SELECT question FROM 'questiondata' WHERE department='s' AND id=1");
                print(question[0]["question"]);
                print("mmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm");
                obg.speak(question[0]["question"]);
              },
              child: Container(
                width: MediaQuery.of(context).size.width*.75,
                height:MediaQuery.of(context).size.height*.1,
                // margin: EdgeInsets.only(top: MediaQuery.of(context).size.height*.05,),
                padding: EdgeInsets.all(1),
                child:Image(image:AssetImage('images/listencal.png',) ),
              )
          ),
          SizedBox(height: MediaQuery.of(context).size.height*.05,),
          GestureDetector(
            onTap: ()async{

              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return Similar2Class();
              },));
            }
            ,
            child:Container(
              width: MediaQuery.of(context).size.width*.35,
              height:MediaQuery.of(context).size.height*.07,
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
                  'التالي',
                  style: TextStyle(
                    color: Color(0xff745C9C),
                    fontSize:MediaQuery.of(context).size.width*.07 ,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
  Widget _buildLandscapeLayout(){
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage('images/similarbg.png')
          )
      ),
      child: Column(
        children: [

          SizedBox(height: MediaQuery.of(context).size.height*.05,),
          Column(
            children: [
              Row(
                mainAxisAlignment:MainAxisAlignment.center ,
                children: [
                  Text("ما هو الشبه بين البرتقال والموز؟",style: TextStyle(fontSize:MediaQuery.of(context).size.width*.03,color: Color(0xff3A2725),fontWeight: FontWeight.w400 ),),
                  Text("(1)",style: TextStyle(fontSize:MediaQuery.of(context).size.width*.03,color: Color(0xff3A2725),fontWeight: FontWeight.w400 )),
                ],
              ),
              //
              // Center(
              //   child: Text("البرتقال والموز؟",style: TextStyle(fontSize:MediaQuery.of(context).size.width*.03,color: Color(0xff3A2725),fontWeight: FontWeight.w400 )),
              // ),
            ],
          ),
          SizedBox(height:MediaQuery.of(context).size.width*.05,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset('images/panana.png',height:MediaQuery.of(context).size.height*.15,width:MediaQuery.of(context).size.width*.4,),
              Image.asset('images/orange.png',height:MediaQuery.of(context).size.height*.2,width:MediaQuery.of(context).size.width*.5 ,),
            ],
          ),
        //  ,SizedBox(height: MediaQuery.of(context).size.height*.05,),
          GestureDetector(
              onTap: ()async{
                question=await sql.readData("SELECT question FROM 'questiondata' WHERE department='s' AND id=1 ");
                print(question[0]["question"]);
                print("mmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm");
                obg.speak(question[0]["question"]);
              },
              child: Container(
                width: MediaQuery.of(context).size.width*.8,
                height:MediaQuery.of(context).size.height*.15,
                // margin: EdgeInsets.only(top: MediaQuery.of(context).size.height*.05,),
                padding: EdgeInsets.all(1),
                child:Image(image:AssetImage('images/listencal.png',) ),
              )
          ),
          SizedBox(height: MediaQuery.of(context).size.height*.05,),
          GestureDetector(
            onTap: ()async{

              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return Similar2Class();
              },));
            }
            ,
            child:Container(
              width: MediaQuery.of(context).size.width*.15,
              height:MediaQuery.of(context).size.height*.1,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [
                        Color(0xffFFBFAD),
                        Color(0xffEF5124)
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter
                  ),
                  borderRadius: BorderRadius.circular(31,),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xff3C5E80),
                      offset: Offset(0,4),
                      blurRadius: 4,
                    )
                  ],
                  border: Border.all(color: Color(0xffD9411F),width: 2)
              ),
              child: Center(
                child: Text(
                  'التالى',
                  style: TextStyle(
                    color: Color(0xff745C9C),
                    fontSize:MediaQuery.of(context).size.width*.03 ,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}