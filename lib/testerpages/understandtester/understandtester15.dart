import 'package:flutter/material.dart';
class UnderstandTester16Class extends StatefulWidget{
  State<UnderstandTester16Class> createState() => _pg();
}
class _pg extends State<UnderstandTester16Class> {
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
                  image: AssetImage('images/backgroungp3.png',),
                ),
              ),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    child: Text('(الفهم العام)',style: TextStyle(fontSize:30,color: Color(0xff543686) )),
                  ),
                  SizedBox(height: 50,),
                  Column(
                    children: [
                      Row(
                        //(١٤) ليه الواحد لازم يحافظ على وعده ؟
                        mainAxisAlignment:MainAxisAlignment.center ,
                        children: [
                          Text("ليه الواحد لازم يحافظ",style: TextStyle(fontSize:30,color: Color(0xff543686) ),),
                          Text("(١٤)",style: TextStyle(fontSize:30,color: Color(0xff543686)  )),
                        ],
                      ),
                      Center(
                        child: Text("على وعده "+"؟",style: TextStyle(fontSize:30,color: Color(0xff543686)  )),
                      ),
                    ],
                  ),
                  SizedBox(height:30),
                  GestureDetector(
                    // onTap: (){
                    //   Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                    //     return Page4understandClass();
                    //   },));
                    // },
                    child: Container(
                      width: 250,
                      height: 50,
                      decoration: BoxDecoration(
                        // color:Colors(0xffB9B4E4),
                          color: Color(0xffB9B4E4),
                          // Opacity(opacity: 9),
                          borderRadius: BorderRadius.circular(31,),
                          boxShadow: [
                            BoxShadow(
                              color: Color(0xff3C5E80),
                              offset: Offset(0,4),
                              blurRadius: 4,
                            )
                          ],
                          border: Border.all(color: Color(0xff3C5E80),width: 2)
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

                    // onTap: (){
                    //   Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                    //     return Page4understandClass();
                    //   },));
                    // },
                    child: Container(
                      width: 250,
                      height: 50,
                      margin: EdgeInsets.only(top: 20),
                      decoration: BoxDecoration(
                        // color:Colors(0xffB9B4E4),
                          color: Color(0xffB9B4E4),
                          // Opacity(opacity: 9),
                          borderRadius: BorderRadius.circular(31,),
                          boxShadow: [
                            BoxShadow(
                              color: Color(0xff3C5E80),
                              offset: Offset(0,4),
                              blurRadius: 4,
                            )
                          ],
                          border: Border.all(color: Color(0xff3C5E80),width: 2)
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
                    // onTap: (){
                    //   Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                    //     return Page4understandClass();
                    //   },));
                    // },
                    child: Container(
                      width: 250,
                      height: 50,
                      margin: EdgeInsets.only(top: 20),
                      decoration: BoxDecoration(
                        // color:Colors(0xffB9B4E4),
                          color: Color(0xffB9B4E4),
                          // Opacity(opacity: 9),
                          borderRadius: BorderRadius.circular(31,),
                          boxShadow: [
                            BoxShadow(
                              color: Color(0xff3C5E80),
                              offset: Offset(0,4),
                              blurRadius: 4,
                            )
                          ],
                          border: Border.all(color: Color(0xff3C5E80),width: 2)
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
                    // onTap: (){
                    //   Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                    //     return Page7understandClass();
                    //   },));
                    // },
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
                            fontSize: 30,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )
        )
    );
  }
}
