import 'package:flutter/material.dart';
//import 'page3informations.dart';
//import 'answerinformation1.dart';
//import 'textanswerinformations2.dart';

class ChoiceCalculation extends StatefulWidget {
  State<ChoiceCalculation> createState() => _pg();
}

class _pg extends State<ChoiceCalculation> {
  @override
  Widget build(BuildContext buildcontext) {
    var st = ModalRoute.of(context)!.settings.arguments;
    var v;
    // var nextpages;
    if (st != null) {
      v = st;
      // nextpages=v["nextpage"];
    }
    return SafeArea(
        child: Material(
            child: Container(
              //margin: EdgeInsets.only(top: 50),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage('images/calculationanswer.png'))),
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: MediaQuery.of(context).size.height*.25,),
                      child: Image(
                        image: AssetImage('images/choicecal.png'),
                        width: 90,
                        height: 90,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        // Navigator.push(context,MaterialPageRoute(builder: (context) {
                        //   return AnswerInformation1Class();
                        // }
                        // ,)
                        // );"grade":grade,"answer":answer
                        Navigator.of(context)
                            .pushNamed("VoiceAnswerCalculation", arguments: {
                          "nextpage": v["nextpage"],
                          "grade": v["grade"],
                          "answer": v["answer"]
                        });
                      },
                      child: Container(
                        margin: EdgeInsets.only(top: 25, left: 15),
                        width: 220,
                        height: 50,
                        decoration: BoxDecoration(
                            color: Color(0xffFFFFFF),
                            borderRadius: BorderRadius.circular(
                              31,
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Color(0xff000000),
                                offset: Offset(0, 3),
                                blurRadius: 4,
                                // spreadRadius: 2
                              ),
                            ],
                            border: Border.all(
                                width: 0.5, color: Color(0xffFFFFFF))),
                        child: Center(
                          child: Padding(
                              padding: EdgeInsets.only(left: 10),
                              child: Text(
                                'تسجيل مقطع صوتي',
                                style: TextStyle(
                                    color: Color(0xff000000),
                                    fontWeight: FontWeight.w400,
                                    fontSize: 20),
                              )),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      //margin: EdgeInsets.only(top: 150),
                      child: Image(
                        image: AssetImage('images/choicecal2.png'),
                        width: 90,
                        height: 90,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        //  Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                        //   return TextAnswer1();
                        // },));
                        Navigator.of(context).pushNamed("TextAnswerCalculation",
                            arguments: {
                              "nextpage": v["nextpage"],
                              "grade": v["grade"],
                              "answer": v["answer"]
                            });
                      },
                      child: Container(
                        margin: EdgeInsets.only(top: 25, left: 15),
                        width: 220,
                        height: 50,
                        decoration: BoxDecoration(
                            color: Color(0xffFFFFFF),
                            borderRadius: BorderRadius.circular(
                              31,
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Color(0xff000000),
                                offset: Offset(0, 3),
                                blurRadius: 4,
                              ),
                            ],
                            border: Border.all(
                                width: 0.5, color: Color(0xffFFFFFF))),
                        child: Center(
                          child: Padding(
                              padding: EdgeInsets.only(left: 10),
                              child: Text(
                                'ادخال اجابه نصيه',
                                style: TextStyle(
                                    color: Color(0xff000000),
                                    fontWeight: FontWeight.w400,
                                    fontSize: 20),
                              )),
                        ),
                      ),
                    ),
                  ],
                ))));
  }
}
