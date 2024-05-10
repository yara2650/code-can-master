import 'package:codecansecond/logicoperation/calculationdegree.dart';
import 'package:flutter/material.dart';
import 'understandtester11.dart';

class UnderstandTester11Class extends StatefulWidget {
  State<UnderstandTester11Class> createState() => _pg();
}

class _pg extends State<UnderstandTester11Class> {
  int Questiondegree = 0;
  bool check = false;
  String text = " ";
  @override
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
            margin: EdgeInsets.only(top: 10),
            child: Text('(الفهم العام)',
                style: TextStyle(fontSize: 30, color: Color(0xff543686))),
          ),
          SizedBox(
            height: 100,
          ),
          Column(
            children: [
              Row(
                //(۱۰) ليه الأحسن عموماً أننا نتبرع بالفلوس للجمعيات الخيرية بدل مانديها للشحاتين في الشوارع ؟
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "ليه الأحسن عموماً أننا",
                    style: TextStyle(fontSize: 30, color: Color(0xff543686)),
                  ),
                  Text("(۱۰)",
                      style: TextStyle(fontSize: 30, color: Color(0xff543686))),
                ],
              ),
              Center(
                child: Text("نتبرع بالفلوس للجمعيات",
                    style: TextStyle(fontSize: 30, color: Color(0xff543686))),
              ),
              Center(
                child: Text("الخيرية بدل مانديها",
                    style: TextStyle(fontSize: 30, color: Color(0xff543686))),
              ),
              Center(
                child: Text("للشحاتين في الشوارع ؟",
                    style: TextStyle(fontSize: 30, color: Color(0xff543686))),
              ),
            ],
          ),
          SizedBox(height: 10),
          GestureDetector(
            onTap: () {
              setState(() {
                Questiondegree = 2;
                check = true;
                text = "";
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
                text = "";
              });
            },
            child: Container(
              width: 250,
              height: 50,
              margin: EdgeInsets.only(top: 20),
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
                Questiondegree = 1;
                check = true;
                text = "";
              });
            },
            child: Container(
              width: 250,
              height: 50,
              margin: EdgeInsets.only(top: 20),
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
            height: 50,
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                calculation.degree += Questiondegree;
              });
              if (check == true) {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) {
                    return UnderstandTester12Class();
                  },
                ));
              } else {
                setState(() {
                  text = "select degree";
                });
              }
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
