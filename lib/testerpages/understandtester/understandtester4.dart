import 'package:codecansecond/logicoperation/calculationdegree.dart';
import 'package:flutter/material.dart';
import 'understandtester5.dart';

class UnderstandTester5Class extends StatefulWidget {
  State<UnderstandTester5Class> createState() => _pg();
}

class _pg extends State<UnderstandTester5Class> {
  int Questiondegree = 0;
  bool check = false;
  String text = "";
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
          const SizedBox(
            height: 100,
          ),
          Column(
            children: [
              Row(
                //(٤ ) تعمل ايه لو واحد أو بنت أصغر منك بكثير ابتدا يتخانق أو ابتدت.
                // تتخانق معاك أو يشاكلك ؟
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    " تعمل ايه لو واحد أو ",
                    style: TextStyle(fontSize: 30, color: Color(0xff543686)),
                  ),
                  Text("(٤ )",
                      style: TextStyle(fontSize: 30, color: Color(0xff543686))),
                ],
              ),
              Center(
                child: Text(" بنت أصغر منك بكثير ابتدا",
                    style: TextStyle(fontSize: 30, color: Color(0xff543686))),
              ),
              Center(
                child: Text("يتخانق أو ابتدت",
                    style: TextStyle(fontSize: 30, color: Color(0xff543686))),
              ),
              Center(
                child: Text(" تتخانق معاك أو يشاكلك " + "؟",
                    style: TextStyle(fontSize: 30, color: Color(0xff543686))),
              ),
            ],
          ),
          SizedBox(height: 30),
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
                Questiondegree = 0;
                check = true;
                text = " ";
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
            height: 40,
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                calculation.degree += Questiondegree;
              });
              if (check == true) {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) {
                    return UnderstandTester6Class();
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
