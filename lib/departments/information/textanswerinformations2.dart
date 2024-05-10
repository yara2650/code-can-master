import 'package:flutter/material.dart';
import 'package:codecansecond/logicoperation/sqlflite2.dart';
import 'package:codecansecond/logicoperation/calculationdegreetochild.dart';
//import 'page40vocublary.dart';
//import 'page3informations.dart';
//import 'forgetinformation2.dart';
class TextAnswer1 extends StatefulWidget{
  State<TextAnswer1>createState()=> _pg();
}
class _pg extends State<TextAnswer1> {
  var variable;
  SqlDb sqldb=SqlDb();
 // late int degree;

  @override
  void initState(){
    variable="";

  }
  @override
  Widget build(BuildContext buildcontext) {
    var st =ModalRoute.of(context)!.settings.arguments;
    var v;
    // var nextpages;
    if(st != null){
      v=st;
    }
    return SafeArea(
        child: Material(
            child: Container(
            decoration: BoxDecoration(
            image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage('images/information3.png')
            )
          ),
        child: Column(
          children: [
            SizedBox(height:190),
            Container(
              width: 150,
              height: 55,
              decoration: BoxDecoration(
                color: Color(0xffFEE6DE),
                border: Border.all(color: Color(0xffF16A44),width: 1),
                boxShadow: [
                  BoxShadow(
                    color: Color(0xffF16A44),
                    offset: Offset(0,1),
                    blurRadius: 1,
                    // spreadRadius: 2
                  ),
                ],
              ),
              child: Center(
                child: Text(variable,style: TextStyle(fontSize: 17)),
              ),
            ),
            SizedBox(height: 30,),
            Row(
             // mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [

                GestureDetector(
                  onTap: (){
                    setState(() {
                      variable=variable+'1';
                    });
                  },
                  child:  Container(
                    width: 55,
                    height: 55,
                    margin: EdgeInsets.only(left: 90),
                    decoration: BoxDecoration(
                      color: Color(0xffFFD6C8),
                      borderRadius: BorderRadius.circular(15,),
                      // boxShadow: [
                      //   BoxShadow(
                      //     color: Color(0xff542C3A),
                      //     offset: Offset(0,2),
                      //     blurRadius: 1,
                      //     // spreadRadius: 2
                      //   ),
                      // ],
                      border: Border.all(width: 1 ,color: Color(0xffF16A44)),
                    ),
                    child: Center(
                      child: Text(
                        '1',
                        style: TextStyle(
                          color: Color(0xff542C3A),
                          fontSize: 35,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                ),
               // SizedBox(height: 30,),
                GestureDetector(
                  onTap: (){
                    setState(() {
                      variable=variable+'2';
                    });
                  },
                  child:  Container(
                    width: 55,
                    height: 55,
                    margin: EdgeInsets.only(left:20),
                    decoration: BoxDecoration(
                      color: Color(0xffFFD6C8),
                      borderRadius: BorderRadius.circular(15,),

                      border: Border.all(width: 1 ,color: Color(0xffF16A44)),
                    ),
                    child: Center(
                      child: Text(
                        '2',
                        style: TextStyle(
                          color: Color(0xff542C3A),
                          fontSize: 35,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                ),
              //  SizedBox(height: 30,),
                GestureDetector(
                  onTap: (){
                    setState(() {
                      variable=variable+'3';
                    });
                  },
                  child:  Container(
                    width: 55,
                    height: 55,
                    margin: EdgeInsets.only(left:20),
                    decoration: BoxDecoration(
                      color: Color(0xffFFD6C8),
                      borderRadius: BorderRadius.circular(15,),

                      border: Border.all(width: 1 ,color: Color(0xffF16A44)),
                    ),
                    child: Center(
                      child: Text(
                        '3',
                        style: TextStyle(
                          color: Color(0xff542C3A),
                          fontSize: 35,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20,),
            Row(
              // mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [

                GestureDetector(
                  onTap: (){
                    setState(() {
                      variable=variable+'4';
                    });
                  },
                  child:  Container(
                    width: 55,
                    height: 55,
                    margin: EdgeInsets.only(left: 90),
                    decoration: BoxDecoration(
                      color: Color(0xffFFD6C8),
                      borderRadius: BorderRadius.circular(15,),
                      border: Border.all(width: 1 ,color: Color(0xffF16A44)),
                    ),
                    child: Center(
                      child: Text(
                        '4',
                        style: TextStyle(
                          color: Color(0xff542C3A),
                          fontSize: 35,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                ),
                // SizedBox(height: 30,),
                GestureDetector(
                  onTap: (){
                    setState(() {
                      variable=variable+'5';
                    });
                  },
                  child:  Container(
                    width: 55,
                    height: 55,
                    margin: EdgeInsets.only(left:20),
                    decoration: BoxDecoration(
                      color: Color(0xffFFD6C8),
                      borderRadius: BorderRadius.circular(15,),
                      border: Border.all(width: 1 ,color: Color(0xffF16A44)),
                    ),
                    child: Center(
                      child: Text(
                        '5',
                        style: TextStyle(
                          color: Color(0xff542C3A),
                          fontSize: 35,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                ),
                //  SizedBox(height: 30,),
                GestureDetector(
                  onTap: (){
                    setState(() {
                      variable=variable+'6';
                    });
                  },
                  child:  Container(
                    width: 55,
                    height: 55,
                    margin: EdgeInsets.only(left:20),
                    decoration: BoxDecoration(
                      color: Color(0xffFFD6C8),
                      borderRadius: BorderRadius.circular(15,),

                      border: Border.all(width: 1 ,color: Color(0xffF16A44)),
                    ),
                    child: Center(
                      child: Text(
                        '6',
                        style: TextStyle(
                          color: Color(0xff542C3A),
                          fontSize: 35,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20,),
            Row(
              // mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [

                GestureDetector(
                  onTap: (){
                    setState(() {
                      variable=variable+'7';
                    });
                  },
                  child:  Container(
                    width: 55,
                    height: 55,
                    margin: EdgeInsets.only(left: 90),
                    decoration: BoxDecoration(
                      color: Color(0xffFFD6C8),
                      borderRadius: BorderRadius.circular(15,),
                      border: Border.all(width: 1 ,color: Color(0xffF16A44)),
                    ),
                    child: Center(
                      child: Text(
                        '7',
                        style: TextStyle(
                          color: Color(0xff542C3A),
                          fontSize: 35,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                ),
                // SizedBox(height: 30,),
                GestureDetector(
                  onTap: (){
                    setState(() {
                      variable=variable+'8';
                    });
                  },
                  child:  Container(
                    width: 55,
                    height: 55,
                    margin: EdgeInsets.only(left:20),
                    decoration: BoxDecoration(
                      color: Color(0xffFFD6C8),
                      borderRadius: BorderRadius.circular(15,),

                      border: Border.all(width: 1 ,color: Color(0xffF16A44)),
                    ),
                    child: Center(
                      child: Text(
                        '8',
                        style: TextStyle(
                          color: Color(0xff542C3A),
                          fontSize: 35,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                ),
                //  SizedBox(height: 30,),
                GestureDetector(
                  onTap: (){
                    setState(() {
                      variable=variable+'9';
                    });
                  },
                  child:  Container(
                    width: 55,
                    height: 55,
                    margin: EdgeInsets.only(left:20),
                    decoration: BoxDecoration(
                      color: Color(0xffFFD6C8),
                      borderRadius: BorderRadius.circular(15,),
                      border: Border.all(width: 1 ,color: Color(0xffF16A44)),
                    ),
                    child: Center(
                      child: Text(
                        '9',
                        style: TextStyle(
                          color: Color(0xff542C3A),
                          fontSize: 35,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),

              GestureDetector(
                onTap: (){
                  setState(() {
                    variable=variable+'0';
                  });
                },
                child:  Container(
                  width: 55,
                  height: 55,
                  margin: EdgeInsets.only(left:7,top: 20),
                  decoration: BoxDecoration(
                    color: Color(0xffFFD6C8),
                    borderRadius: BorderRadius.circular(15,),
                    border: Border.all(width: 1 ,color: Color(0xffF16A44)),
                  ),
                  child: Center(
                    child: Text(
                      '0',
                      style: TextStyle(
                        color: Color(0xff542C3A),
                        fontSize: 35,
                        fontWeight: FontWeight.w400,
                      ),
                    ),

                ),
              ),
            ),
            GestureDetector(
              onTap: (){
                // Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                //   return ForgetInformation2Class();
                // },));
                print(CalculationToChild.degree);
                int x=v["grade"];
                if(variable==v["answer"]){
                  CalculationToChild.degree+=x;
                }
                print(CalculationToChild.degree);
                Navigator.of(context).pushNamed(v["nextpage"] );
              },
              child:  Container(
                width: 155,
                height: 55,
                margin: EdgeInsets.only(left:7,top: 20),
                decoration: BoxDecoration(
                  color: Color(0xffFFD6C8),
                  borderRadius: BorderRadius.circular(15,),

                  border: Border.all(width: 1 ,color: Color(0xffF16A44)),
                ),
                child: Center(
                  child: Text(
                    'ارسال',
                    style: TextStyle(
                      color: Color(0xff542C3A),
                      fontSize: 35,
                      fontWeight: FontWeight.w400,
                    ),
                  ),

                ),
              ),
            ),
          ],

        )
        )
         )
          );
  }
}