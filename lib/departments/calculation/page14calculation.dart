import 'package:flutter/material.dart';
//import 'answercalculation1.dart';
import 'package:codecansecond/logicoperation/voice.dart';
import 'package:codecansecond/logicoperation/sqlflite2.dart';
class Calculation14Class extends StatefulWidget{
  State<Calculation14Class>createState()=> _pg();
}
class _pg extends State<Calculation14Class> {
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
                    image: AssetImage('images/calculation.png')
                )
            ),
            child: OrientationBuilder(
              builder: (context, orientation) {
                return orientation==Orientation.portrait
                    ? _buildPortraitLayout()
                    : _buildLandscapeLayout();
              },
            ),
          ),
        )
    );
  }
  Widget _buildPortraitLayout(){
    return Column(
      children: [
        SizedBox(height:MediaQuery.of(context).size.height*.05,),
        Container(
          width: MediaQuery.of(context).size.width*.4,
          height: MediaQuery.of(context).size.height*.07,
          decoration: BoxDecoration(
              color: Color(0xffDDEAF8),
              borderRadius: BorderRadius.circular(31,),
              boxShadow: [
                BoxShadow(
                  color: Color(0xff9CC7F2),
                  offset: Offset(0, 5),
                  blurRadius: 4,
                  // spreadRadius: 2
                ),
              ],
              border: Border.all(width: 3,color: Color(0xffBEB1E2))
          ),
          child: Center(
            child: Text('00:00',
              style: TextStyle(color: Color(0xff235B7F),fontWeight: FontWeight.w400,fontSize:MediaQuery.of(context).size.width*.08
              ) ,),
          ),
        ),
        SizedBox(height:MediaQuery.of(context).size.height*.05,),
        Image.asset('images/thinkmen.png',height:MediaQuery.of(context).size.height*.2,
          width:MediaQuery.of(context).size.width*.7 ,),
        SizedBox(height:MediaQuery.of(context).size.height*.05,),
        Column(
          children: [
            Row(
              //إذا كان سعر 3 كراسات هو جنيه واحد، فكم يكون سعر 24 كراسة؟
              mainAxisAlignment:MainAxisAlignment.center ,
              children: [
                Text("إذا كان سعر 3 كراسات هو جنيه واحد",style: TextStyle(fontSize:MediaQuery.of(context).size.width*.06,color: Color(0xff543686) ),),
                Text("(13)",style: TextStyle(fontSize:MediaQuery.of(context).size.width*.06,color: Color(0xff543686)  )),
              ],
            ),
            Center(
              child: Text("فكم يكون سعر 24 كراسة؟",style: TextStyle(fontSize:MediaQuery.of(context).size.width*.06,color: Color(0xff543686)  )),
            ),
            // Center(
            //   child: Text("المتبقي لديه من 5 جنيهات"+"؟",style: TextStyle(fontSize:MediaQuery.of(context).size.width*.06,color: Color(0xff543686)  )),
            // ),
          ],
        ),
        GestureDetector(
            onTap: ()async{
              question=await sql.readData("SELECT question FROM 'questiondata' WHERE department='c' AND id=14 ");
              print(question[0]["question"]);
              print("mmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm");
              obg.speak(question[0]["question"]);
            },
            child: Container(
              width: MediaQuery.of(context).size.width*.6,
              height: MediaQuery.of(context).size.height*.1,
              margin: EdgeInsets.only(top: MediaQuery.of(context).size.height*.07,),
              padding: EdgeInsets.all(1),
              child:Image(image:AssetImage('images/listencal.png',) ),
            )
        ),
        SizedBox(height: MediaQuery.of(context).size.height*.05,),
        GestureDetector(
          onTap: ()async{
            List<Map> question=await sql.readData("SELECT grade , answer FROM 'questiondata' WHERE department='c' AND id=14 ");
            int grade=question[0]["grade"];
            String answer=question[0]["answer"];
            print(grade);
            print(answer);
            print("mmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm");
            // obg.speak(question[0]["question"]);
            Navigator.of(context).pushNamed("ChoiceCalculation",
                arguments: {"nextpage":"Calculation15Class","grade":grade,"answer":answer});
          }
          ,
          child:Container(
            width: MediaQuery.of(context).size.width*.4,
            height:MediaQuery.of(context).size.width*.15,
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
                'الاجابة',
                style: TextStyle(
                  color: Color(0xff745C9C),
                  fontSize: MediaQuery.of(context).size.width*.09,
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
        SizedBox(height:MediaQuery.of(context).size.height*.05,),
        Container(
          width: MediaQuery.of(context).size.width*.2,
          height: MediaQuery.of(context).size.height*.09,
          decoration: BoxDecoration(
              color: Color(0xffDDEAF8),
              borderRadius: BorderRadius.circular(31,),
              boxShadow: [
                BoxShadow(
                  color: Color(0xff9CC7F2),
                  offset: Offset(0, 5),
                  blurRadius: 4,
                  // spreadRadius: 2
                ),
              ],
              border: Border.all(width: 3,color: Color(0xffBEB1E2))
          ),
          child: Center(
            child: Text('00:00',
              style: TextStyle(color: Color(0xff235B7F),fontWeight: FontWeight.w400,fontSize:MediaQuery.of(context).size.width*.03
              ) ,),
          ),
        ),
        SizedBox(height:MediaQuery.of(context).size.height*.05,),
        Image.asset('images/thinkmen.png',height:MediaQuery.of(context).size.height*.25,
          width:MediaQuery.of(context).size.width*.8 ,),
        //   SizedBox(height:MediaQuery.of(context).size.height*.05,),
        Column(
          children: [
            Row(
              //إذا كان سعر 3 كراسات هو جنيه واحد، فكم يكون سعر 24 كراسة؟
              mainAxisAlignment:MainAxisAlignment.center ,
              children: [
                Text("إذا كان سعر 3 كراسات هو جنيه واحد، فكم يكون سعر 24 كراسة؟",style: TextStyle(fontSize:MediaQuery.of(context).size.width*.02,color: Color(0xff543686) ),),
                Text("(14)",style: TextStyle(fontSize:MediaQuery.of(context).size.width*.02,color: Color(0xff543686)  )),
              ],
            ),
            // Center(
            //   child: Text("كم المبلغ المتبقي لديه من 5 جنيهات"+"؟",style: TextStyle(fontSize:MediaQuery.of(context).size.width*.02,color: Color(0xff543686)  )),
            // ),
          ],
        ),
        GestureDetector(
            onTap: ()async{
              question=await sql.readData("SELECT question FROM 'questiondata' WHERE department='c' AND id=14 ");
              print(question[0]["question"]);
              print("mmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm");
              obg.speak(question[0]["question"]);
            },
            child: Container(
              width: MediaQuery.of(context).size.width*.15,
              height:MediaQuery.of(context).size.height*.1,
              // margin: EdgeInsets.only(top: MediaQuery.of(context).size.height*.05,),
              padding: EdgeInsets.all(1),
              child:Image(image:AssetImage('images/listencal.png',) ),
            )
        ),
        SizedBox(height: MediaQuery.of(context).size.height*.05,),
        GestureDetector(
          onTap: ()async{
            List<Map> question=await sql.readData("SELECT grade , answer FROM 'questiondata' WHERE department='c' AND id=14 ");
            int grade=question[0]["grade"];
            String answer=question[0]["answer"];
            print(grade);
            print(answer);
            print("mmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm");
            // obg.speak(question[0]["question"]);
            Navigator.of(context).pushNamed("ChoiceCalculation",
                arguments: {"nextpage":"Calculation15Class","grade":grade,"answer":answer});
          }
          ,
          child:Container(
            width: MediaQuery.of(context).size.width*.15,
            height:MediaQuery.of(context).size.height*.1,
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
                'الاجابة',
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
    );
  }
}