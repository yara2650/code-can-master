import 'package:flutter/material.dart';
import 'page1understand.dart';
class UnderstandFirst extends StatefulWidget{
  State<UnderstandFirst>createState()=> _pg();
}
class _pg extends State<UnderstandFirst> {
  @override
  Widget build(BuildContext buildcontext) {
    return SafeArea(
      child: Material(

          child:Container(
             width:double.infinity,
             height:double.infinity,

            decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage('images/page6img.png'),
                )
            ),
            child:Column(
              children: [
                SizedBox(height:MediaQuery.of(context).size.height*.75,),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                      return Page1Class();
                    },));
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width*.4,
                    height: MediaQuery.of(context).size.height*.08,
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
                          color: Colors.black12,
                          offset: Offset(5, 5),
                          blurRadius: 10,
                        )
                      ],
                      border: Border.all(color: Color(0xff3C5E80),width: 2)
                    ),
                    child: Center(
                      child: Text(
                        'ابدأ',
                        style: TextStyle(
                          color: Color(0xff000000),
                          fontSize: 30,
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