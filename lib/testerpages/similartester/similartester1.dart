import 'package:flutter/material.dart';
import 'package:codecansecond/testerpages/understandtester/understandtester2.dart';
import 'package:codecansecond/logicoperation/calculationdegree.dart';

class SimilarTester1Class extends StatefulWidget{
  State<SimilarTester1Class> createState() => _pg();
}
class _pg extends State<SimilarTester1Class> {
  int Questiondegree=0;
  bool check=false;
  String text="";

  //var x=GlobalKey();
  Widget build(BuildContext buildcontext) {
    // var heights=mediaQuery.;
    return SafeArea(
        child: Material(
          child: OrientationBuilder(
            builder: (context, orientation) {
              return orientation == Orientation.portrait
                  ? _buildPortraitLayout()
                  : _buildLandscapeLayout();
            },
          ),
        )
    );
  }
  Widget _buildPortraitLayout(){
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage('images/similartesterBg.png',),
        ),
      ),
      child: Column(
        children: [
          // Container(
          //   margin: EdgeInsets.only(top: 30),
          //   child: Text('(الفهم العام)',style: TextStyle(fontSize:30,color: Color(0xff543686) )),
          // ),
          SizedBox(height:MediaQuery.of(context).size.height*.15,),
          Column(
            children: [
              Center(
                  child:Text("ما هو الشبه بين ",
                      style: TextStyle( color: Color(0xff543686),fontWeight: FontWeight.w400,fontSize: MediaQuery.of(context).size.width*.09
                      )
                  )
              ),

              Center(
                child: Text("البرتقال والموز"+"؟",style: TextStyle(fontSize:MediaQuery.of(context).size.width*.09,color: Color(0xff543686)  )),
              ),
            ],
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
             width: MediaQuery.of(context).size.width*.75,
              height: MediaQuery.of(context).size.height*.07,
               margin: EdgeInsets.only(top: MediaQuery.of(context).size.height*.05),
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
                    fontSize:MediaQuery.of(context).size.width*.075,
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
              width:MediaQuery.of(context).size.width*.75,
              height: MediaQuery.of(context).size.height*.07,
              margin: EdgeInsets.only(top: MediaQuery.of(context).size.height*.05,),
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
                    fontSize:MediaQuery.of(context).size.width*.07 ,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: (){
              setState(() {
                Questiondegree=2;
                check=true;
                text=" ";
              });
            },
            child: Container(
              width:MediaQuery.of(context).size.width*.75,
              height: MediaQuery.of(context).size.height*.07,
              margin: EdgeInsets.only(top: MediaQuery.of(context).size.height*.05,),
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
                    fontSize:MediaQuery.of(context).size.width*.07,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height*.05,),

          GestureDetector(

            onTap: (){
              calculation.SimilarDegree+=Questiondegree;
              //print(calculation.degree);
              if(check==true){
                // Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                //   return InformationTester15Class();
                // },));
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
              width:MediaQuery.of(context).size.width*.45,
              height: MediaQuery.of(context).size.height*.07,
              //margin: EdgeInsets.only(top: MediaQuery.of(context).size.height*.05,),
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
                      color: Color(0xffFFFFFF),
                    fontSize: MediaQuery.of(context).size.width*.07,
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
    );
  }
  Widget _buildLandscapeLayout(){
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage('images/similartesterBg.png',),
        ),
      ),
      child: Column(
        children: [
          // Container(
          //   margin: EdgeInsets.only(top: 30),
          //   child: Text('(الفهم العام)',style: TextStyle(fontSize:30,color: Color(0xff543686) )),
          // ),
          SizedBox(height:MediaQuery.of(context).size.height*.15,),
          Column(
            children: [
              Center(
                  child:Text("ما هو الشبه بين البرتقال والموز ",
                      style: TextStyle( color: Color(0xff543686),fontWeight: FontWeight.w400,fontSize: MediaQuery.of(context).size.width*.03
                      )
                  )
              ),

              // Center(
              //   child: Text("البرتقال والموز"+"؟",style: TextStyle(fontSize:MediaQuery.of(context).size.width*.09,color: Color(0xff543686)  )),
              // ),
            ],
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
              width: MediaQuery.of(context).size.width*.3,
              height: MediaQuery.of(context).size.height*.09,
              margin: EdgeInsets.only(top: MediaQuery.of(context).size.height*.02),
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
                    fontSize:MediaQuery.of(context).size.width*.02,
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
              width: MediaQuery.of(context).size.width*.3,
              height: MediaQuery.of(context).size.height*.09,
              margin: EdgeInsets.only(top: MediaQuery.of(context).size.height*.02),
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
                    fontSize:MediaQuery.of(context).size.width*.02 ,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: (){
              setState(() {
                Questiondegree=2;
                check=true;
                text=" ";
              });
            },
            child: Container(
              width: MediaQuery.of(context).size.width*.3,
              height: MediaQuery.of(context).size.height*.09,
              margin: EdgeInsets.only(top: MediaQuery.of(context).size.height*.02),
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
                    fontSize:MediaQuery.of(context).size.width*.02,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height*.05,),

          GestureDetector(

            onTap: (){
              calculation.SimilarDegree+=Questiondegree;
              //print(calculation.degree);
              if(check==true){
                // Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                //   return InformationTester15Class();
                // },));
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
              width: MediaQuery.of(context).size.width*.2,
              height: MediaQuery.of(context).size.height*.09,
              //margin: EdgeInsets.only(top: MediaQuery.of(context).size.height*.02),
              //margin: EdgeInsets.only(top: MediaQuery.of(context).size.height*.05,),
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
                    color: Color(0xffFFFFFF),
                    fontSize: MediaQuery.of(context).size.width*.02,
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
    );
  }
}
