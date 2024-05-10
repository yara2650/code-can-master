import 'package:flutter/material.dart';
import 'dart:async';
import 'package:codecansecond/logicoperation/insertdataintable.dart';
 import 'testerlogin.dart';
// import 'testerregister.dart';
class Welcome extends StatefulWidget{
  State<Welcome> createState() => _Welcomepage();
}
class _Welcomepage extends State<Welcome>{
  @override
  void initState() {
    super.initState();
    //insert obj;
    Timer(
      Duration(seconds: 3),
          () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => Page2Class(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext buildcontext) {
    return SafeArea(

        child: Material(
         // animationDuration: Duration(seconds: 4),
          
           child: Container(
             width: double.infinity,
             height: double.infinity,
             decoration: BoxDecoration(
               image: DecorationImage(
                 fit: BoxFit.cover,
                 image: AssetImage('images/background2.jpeg'),
               )
             ),
             child: Image.asset('images/appicon.png',),
           ),
        )

    );
  }
}
