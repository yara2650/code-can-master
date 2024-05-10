import 'package:flutter/material.dart';
//import 'page16informations.dart';
import 'package:codecansecond/logicoperation/sizecheck.dart';
import 'package:codecansecond/logicoperation/voice.dart';
import 'package:codecansecond/logicoperation/sqlflite2.dart';
class Information9Class extends StatefulWidget{
  State<Information9Class>createState()=> _pg();
}
class _pg extends State<Information9Class> {
  Reader obg=Reader();
  SqlDb sql= SqlDb();
  late List<Map> question;
  @override

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
                    Container(
                      margin: EdgeInsets.only(top:MediaQuery.of(context).size.height*.15),
                      width:MediaQuery.of(context).size.width*.8,
                      height: MediaQuery.of(context).size.height*.09,
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
                        child: Text('أمتى المطر بينزل في بلدنا ؟',
                          style: TextStyle(color: Color(0xff000000),fontWeight: FontWeight.w400,fontSize: 25
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top:MediaQuery.of(context).size.height*.05),
                      child:Image(image: AssetImage('images/information1-removebg.png'),height: 160,width:160),
                    ),
                    GestureDetector(
                        onTap: ()async{
                          question=await sql.readData("SELECT question FROM 'questiondata' WHERE department='i' AND id=8 ");
                          print(question[0]["question"]);
                          print("mmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm");
                          obg.speak(question[0]["question"]);
                        },
                        child: Container(
                          width: MediaQuery.of(context).size.width*.6,
                          height: MediaQuery.of(context).size.height*.1,
                          margin: EdgeInsets.only(top: MediaQuery.of(context).size.height*.1,),
                          padding: EdgeInsets.all(1),
                          child:Image(image:AssetImage('images/listeninfo.png',) ),
                        )
                    ),
                    GestureDetector(
                      onTap: (){
                        // Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                        //   return Information16Class();
                        // },));
                        Navigator.of(context).pushNamed("Information11Class");
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