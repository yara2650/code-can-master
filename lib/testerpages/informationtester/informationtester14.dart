import 'package:flutter/material.dart';
import 'package:codecansecond/testerpages/understandtester/understandtester2.dart';
import 'package:codecansecond/logicoperation/calculationdegree.dart';
import 'informationtester3.dart';
import 'informationtester15.dart';

class InformationTester14Class extends StatefulWidget{
  State<InformationTester14Class> createState() => _pg();
}
class _pg extends State<InformationTester14Class> {
  int Questiondegree=0;
  bool check=false;
  String text="";

  //var x=GlobalKey();
  Widget build(BuildContext buildcontext) {
    // var heights=mediaQuery.;
    return SafeArea(
        child: Material(
            child: Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage('images/testerinfo2.png',),
                ),
              ),
              child: Column(
                children: [
                  // Container(
                  //   margin: EdgeInsets.only(top: 30),
                  //   child: Text('(الفهم العام)',style: TextStyle(fontSize:30,color: Color(0xff543686) )),
                  // ),
                  SizedBox(height: 150,),
                  Column(
                    children: [
                      Center(
                          child:Text("دمشق فين ؟",
                              style: TextStyle(color: Color(0xff000000),fontWeight: FontWeight.w400,fontSize: 30
                              )
                          )
                      ),

                      // Center(
                      //   child: Text("ماذا ستفعل"+"؟",style: TextStyle(fontSize:30,color: Color(0xff543686)  )),
                      // ),
                    ],
                  ),
                  SizedBox(height:40),
                  GestureDetector(
                    onTap: (){
                      setState(() {
                        Questiondegree=2;
                        check=true;
                        text=" ";
                      });
                    },
                    child: Container(
                      width: 250,
                      height: 50,
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
                      child: Padding(
                        padding: EdgeInsets.only(bottom: 8,left: 80),
                        child: Text(
                          'درجتين',
                          style: TextStyle(
                            color: Color(0xffFFFFFF),
                            fontSize: 25,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                  ),

                  GestureDetector(

                    onTap: (){
                      setState(() {
                        Questiondegree=1;
                        check=true;
                        text=" ";
                      });
                    },
                    child: Container(
                      width: 250,
                      height: 50,
                      margin: EdgeInsets.only(top: 30),
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
                      child: Padding(
                        padding: EdgeInsets.only(bottom: 8,left: 80),
                        child: Text(
                          '١ درجه',
                          style: TextStyle(
                            color: Color(0xffFFFFFF),
                            fontSize: 25,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      setState(() {
                        Questiondegree=0;
                        check=true;
                        text=" ";
                      });
                    },
                    child: Container(
                      width: 250,
                      height: 50,
                      margin: EdgeInsets.only(top: 30),
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
                      child: Padding(
                        padding: EdgeInsets.only(bottom: 8,left: 100),
                        child: Text(
                          'صفر',
                          style: TextStyle(
                            color: Color(0xffFFFFFF),
                            fontSize: 25,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 30,),

                  GestureDetector(

                    onTap: (){
                      calculation.degree+=Questiondegree;
                      //print(calculation.degree);
                      if(check==true){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                          return InformationTester15Class();
                        },));
                      }else {
                        setState(() {
                          text="select degree";
                        }
                        );

                      }
                      print(text);
                      // Navigator.of(context).pushNamed("UnderstandTester3Class",arguments: {"degree":degree});
                    },
                    child: Container(
                      width: 155,
                      height: 55,
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
                              color: Color(0xff252033),
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
                            color: Color(0xff3E1C12),
                            fontSize: 30,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 4,),
                  Center(
                    // key: ,
                    child: Text(text,style: TextStyle(color: Colors.redAccent),
                    ),
                  )
                ],
              ),
            )
        )
    );
  }
}
