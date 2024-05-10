import 'package:flutter/material.dart';
import 'package:codecansecond/testerpages/understandtester/understandtester2.dart';
import 'package:codecansecond/logicoperation/calculationdegree.dart';

//import 'package:codecansecond/logicoperation/voice.dart';
class UnderstandTester2Class extends StatefulWidget {
  State<UnderstandTester2Class> createState() => _pg();
}

class _pg extends State<UnderstandTester2Class> {
  int Questiondegree = 0;
  bool check = false;
  String text = "";

  //var x=GlobalKey();
  Widget build(BuildContext buildcontext) {
    return SafeArea(
        child: Material(
            child: Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage(
            'images/backgroungp3.png',
          ),
        ),
      ),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 30),
            child: Text('(الفهم العام)',
                style: TextStyle(fontSize: 30, color: Color(0xff543686))),
          ),
          SizedBox(
            height: 60,
          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "لو جرحت اصبعك",
                    style: TextStyle(fontSize: 30, color: Color(0xff543686)),
                  ),
                  Text(" (1)",
                      style: TextStyle(fontSize: 30, color: Color(0xff543686))),
                ],
              ),
              Center(
                child: Text("ماذا ستفعل" + "؟",
                    style: TextStyle(fontSize: 30, color: Color(0xff543686))),
              ),
            ],
          ),
          SizedBox(height: 40),
          GestureDetector(
            onTap: () {
              setState(() {
                Questiondegree = 2;
                check = true;
                text = " ";
              });
            },
            child: Container(
              width: 250,
              height: 50,
              decoration: BoxDecoration(
                  // color:Colors(0xffB9B4E4),
                  color: Color(0xffB9B4E4),
                  // Opacity(opacity: 9),
                  borderRadius: BorderRadius.circular(
                    31,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xff3C5E80),
                      offset: Offset(0, 4),
                      blurRadius: 4,
                    )
                  ],
                  border: Border.all(color: Color(0xff3C5E80), width: 2)),
              child: Padding(
                padding: EdgeInsets.only(bottom: 8, left: 80),
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
            onTap: () {
              setState(() {
                Questiondegree = 1;
                check = true;
                text = " ";
              });
            },
            child: Container(
              width: 250,
              height: 50,
              margin: EdgeInsets.only(top: 30),
              decoration: BoxDecoration(
                  // color:Colors(0xffB9B4E4),
                  color: Color(0xffB9B4E4),
                  // Opacity(opacity: 9),
                  borderRadius: BorderRadius.circular(
                    31,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xff3C5E80),
                      offset: Offset(0, 4),
                      blurRadius: 4,
                    )
                  ],
                  border: Border.all(color: Color(0xff3C5E80), width: 2)),
              child: Padding(
                padding: EdgeInsets.only(bottom: 8, left: 80),
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
            onTap: () {
              setState(() {
                Questiondegree = 0;
                check = true;
                text = " ";
              });
            },
            child: Container(
              width: 250,
              height: 50,
              margin: EdgeInsets.only(top: 30),
              decoration: BoxDecoration(
                  // color:Colors(0xffB9B4E4),
                  color: Color(0xffB9B4E4),
                  // Opacity(opacity: 9),
                  borderRadius: BorderRadius.circular(
                    31,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xff3C5E80),
                      offset: Offset(0, 4),
                      blurRadius: 4,
                    )
                  ],
                  border: Border.all(color: Color(0xff3C5E80), width: 2)),
              child: Padding(
                padding: EdgeInsets.only(bottom: 8, left: 100),
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
          SizedBox(
            height: 30,
          ),
          GestureDetector(
            onTap: () {
              calculation.degree += Questiondegree;
              //print(calculation.degree);
              if (check == true) {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) {
                    return UnderstandTester3Class();
                  },
                ));
              } else {
                setState(() {
                  text = "select degree";
                });
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
                      Color(0xffDD9FD5),
                      Color(0xff8DCEF6),
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                  borderRadius: BorderRadius.circular(
                    31,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xff252033),
                      offset: Offset(0, 4),
                      blurRadius: 4,
                    )
                  ],
                  border: Border.all(color: Color(0xff3C5E80), width: 2)),
              child: Center(
                child: Text(
                  'التالي',
                  style: TextStyle(
                    color: Color(0xff745C9C),
                    fontSize: 30,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 4,
          ),
          Center(
            // key: ,
            child: Text(
              text,
              style: TextStyle(color: Colors.redAccent),
            ),
          )
        ],
      ),
    )));
  }
}
