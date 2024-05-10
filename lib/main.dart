import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:codecansecond/loginandregister/welcomepage.dart';
import 'package:codecansecond/departments/information/page1information.dart';
import 'package:codecansecond/departments/information/page2informations.dart';
import 'package:codecansecond/departments/information/page3informationss.dart';
import 'package:codecansecond/departments/information/page4informationss.dart';
import 'package:codecansecond/departments/information/page5informationss.dart';
import 'package:codecansecond/departments/information/page6informationss.dart';
import 'package:codecansecond/departments/information/page7informationss.dart';
import 'package:codecansecond/departments/information/page8informationss.dart';
import 'package:codecansecond/departments/information/page9informationss.dart';
import 'package:codecansecond/departments/information/page10informationss.dart';
import 'package:codecansecond/departments/information/page11informationss.dart';
import 'package:codecansecond/departments/information/page12informationss.dart';
import 'package:codecansecond/departments/information/page13informationss.dart';
import 'package:codecansecond/departments/information/page14informationss.dart';
import 'package:codecansecond/departments/information/page15informationss.dart';
import 'package:codecansecond/departments/information/page16informationss.dart';
import 'package:codecansecond/departments/information/page17informationss.dart';
import 'package:codecansecond/departments/information/page18informationss.dart';
import 'package:codecansecond/departments/information/page19informationss.dart';
import 'package:codecansecond/departments/information/page20informationss.dart';
import 'package:codecansecond/departments/information/page21informationss.dart';
import 'package:codecansecond/departments/information/page22informationss.dart';
import 'package:codecansecond/departments/information/page23informationss.dart';
import 'package:codecansecond/departments/information/page24informationss.dart';
import 'package:codecansecond/departments/information/page25informationss.dart';
import 'package:codecansecond/departments/information/page26informationss.dart';
import 'package:codecansecond/departments/information/page27informationss.dart';
import 'package:codecansecond/departments/information/page28informationss.dart';
import 'package:codecansecond/departments/information/page29informationss.dart';
import 'package:codecansecond/departments/information/page30informationss.dart';
import 'package:codecansecond/departments/information/page31informationss.dart';
import 'package:codecansecond/departments/information/page32informationss.dart';
import 'package:codecansecond/departments/information/textanswerinformations2.dart';
import 'package:codecansecond/departments/information/answerinformation1.dart';
import 'package:codecansecond/departments/information/choiceinformation1.dart';
import 'package:codecansecond/testerpages/understandtester/understandtester1.dart';
import 'package:codecansecond/testerpages/understandtester/understandtester2.dart';
import 'package:codecansecond/testerpages/understandtester/understandtester3.dart';
import 'package:codecansecond/testerpages/understandtester/understandtester4.dart';
import 'package:codecansecond/testerpages/understandtester/understandtester5.dart';
import 'package:codecansecond/testerpages/understandtester/understandtester6.dart';
import 'package:codecansecond/testerpages/understandtester/understandtester7.dart';
import 'package:codecansecond/testerpages/understandtester/understandtester8.dart';
import 'package:codecansecond/testerpages/understandtester/understandtester9.dart';
import 'package:codecansecond/testerpages/understandtester/understandtester10.dart';
import 'package:codecansecond/testerpages/understandtester/understandtester11.dart';
import 'package:codecansecond/testerpages/understandtester/understandtester12.dart';
import 'package:codecansecond/testerpages/understandtester/understandtester13.dart';
import 'package:codecansecond/testerpages/understandtester/understandtester14.dart';
import 'package:codecansecond/testerpages/understandtester/understandtester15.dart';
import 'package:codecansecond/loginandregister/oldnewchildtester.dart';
import 'package:codecansecond/departments/totalchilddegree.dart';
import 'firebase_options.dart';
import 'package:codecansecond/departments/calculation/calculationfirst.dart';
import 'package:codecansecond/departments/calculation/page1calculation.dart';
import 'package:codecansecond/departments/calculation/page4calculation.dart';
import 'package:codecansecond/departments/calculation/page5calculation.dart';
import 'package:codecansecond/departments/calculation/page6calculation.dart';
import 'package:codecansecond/departments/calculation/page7calculation.dart';
import 'package:codecansecond/departments/calculation/page8calculation.dart';
import 'package:codecansecond/departments/calculation/page9calculation.dart';
import 'package:codecansecond/departments/calculation/page10calculation.dart';
import 'package:codecansecond/departments/calculation/page11calculation.dart';
import 'package:codecansecond/departments/calculation/page12calculation.dart';
import 'package:codecansecond/departments/calculation/page13calculation.dart';
import 'package:codecansecond/departments/calculation/page14calculation.dart';
import 'package:codecansecond/departments/calculation/page15calculation.dart';
import 'package:codecansecond/departments/calculation/page16calculation.dart';
import 'package:codecansecond/departments/calculation/voiceanswercalculation.dart';
import 'package:codecansecond/departments/calculation/choiceanswer.dart';
import 'package:codecansecond/departments/calculation/textanswer.dart';
import 'package:codecansecond/departments/understandchild/understandfirst.dart';
import 'package:codecansecond/departments/similar/firstsimilar.dart';
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MaterialApp(
      home:Similar1Class(),
      title: "codecan",
     // initialRoute: "home",
      //routes: {
      //   'home': (c) => Welcome(),
      //   'Information1Class': (c) => Information1Class(),
      //   'Information2Class': (c) => Page2InformationClass(),
      //   'Information3Class': (c) => Information3ForgetClass(),
      //   'Information4Class': (c) => Information4Class(),
      //   'Information5Class': (context) => Information5Class(),
      //   'Information6Class': (context) => Information6Class(),
      //   'Information7Class': (context) => Information7Class(),
      //   'Information8Class': (context) => Information8Class(),
      //   'Information9Class': (context) => Information9Class(),
      //   'Information10Class': (context) => Information10Class(),
      //   'Information11Class': (context) => Information11Class(),
      //   'Information12Class': (context) => Information12Class(),
      //   'Information13Class': (context) => Information13Class(),
      //   'Information14Class': (context) => Information14Class(),
      //   'Information15Class': (context) => Information15Class(),
      //   'Information16Class': (context) => Information16Class(),
      //   'Information17Class': (context) => Information17Class(),
      //   'Information18Class': (context) => Information18Class(),
      //   'Information19Class': (context) => Information19Class(),
      //   'Information20Class': (context) => Information20Class(),
      //   'Information21Class': (context) => Information21Class(),
      //   'Information22Class': (context) => Information22Class(),
      //   'Information23Class': (context) => Information23Class(),
      //   'Information24Class': (context) => Information24Class(),
      //   //'Information24Class':(context) => Information24Class(),
      //   'Information25Class': (context) => Information25Class(),
      //   'Information26Class': (context) => Information26Class(),
      //   'Information27Class': (context) => Information27Class(),
      //   'Information28Class': (context) => Information28Class(),
      //   'Information29Class': (context) => Information29Class(),
      //   'Information30Class': (context) => Information30Class(),
      //   'Information31Class': (context) => Information31Class(),
      //   'Information32Class': (context) => Information32Class(),
      //   "TextAnswer1": (context) => TextAnswer1(),
      //   "ChoiceInformation1": (context) => ChoiceInformation1(),
      //   "AnswerInformation1Class": (context) => AnswerInformation1Class(),
      //   "UnderstandTester2Class": (context) => UnderstandTester2Class(),
      //   "UnderstandTester3Class": (context) => UnderstandTester3Class(),
      //   "UnderstandTester4Class": (context) => UnderstandTester4Class(),
      //   "UnderstandTester5Class": (context) => UnderstandTester5Class(),
      //   "UnderstandTester6Class": (context) => UnderstandTester6Class(),
      //   "UnderstandTester7Class": (context) => UnderstandTester7Class(),
      //   "UnderstandTester8Class": (context) => UnderstandTester8Class(),
      //   "UnderstandTester9Class": (context) => UnderstandTester9Class(),
      //   "UnderstandTester10Class": (context) => UnderstandTester10Class(),
      //   "UnderstandTester11Class": (context) => UnderstandTester11Class(),
      //   "UnderstandTester12Class": (context) => UnderstandTester12Class(),
      //   "UnderstandTester13Class": (context) => UnderstandTester13Class(),
      //   "UnderstandTester14Class": (context) => UnderstandTester14Class(),
      //   "UnderstandTester15Class": (context) => UnderstandTester15Class(),
      //   "UnderstandTester16Class": (context) => UnderstandTester16Class(),
      //   "Page5Class": (context) => Page5Class(),
      //   "TotalDegreeChild": (context) => TotalDegreeChild(),
      //    "Calculation1Class":(context)=>Calculation1Class(),
      //   "Calculation4Class":(context)=>Calculation4Class(),
      //   "Calculation5Class":(context)=>Calculation5Class(),
      //   "Calculation6Class":(context)=>Calculation6Class(),
      //   "CalculationC7lass":(context)=>Calculation7Class(),
      //   "Calculation8Class":(context)=>Calculation8Class(),
      //   "Calculation9Class":(context)=>Calculation9Class(),
      //   "Calculation10Class":(context)=>Calculation10Class(),
      //   "Calculation11Class":(context)=>Calculation11Class(),
      //   "Calculation12Class":(context)=>Calculation12Class(),
      //   "Calculation13Class":(context)=>Calculation13Class(),
      //   "Calculation14Class":(context)=>Calculation14Class(),
      //   "Calculation15Class":(context)=>Calculation15Class(),
      //   "Calculation16Class":(context)=>Calculation16Class(),
      //   "ChoiceCalculation":(context)=>ChoiceCalculation(),
      //   "VoiceAnswerCalculation":(context)=>VoiceAnswerCalculation(),
      //   "TextAnswerCalculation":(context)=>TextAnswerCalculation(),
      //   // 'page2':(context)=>Page2Class(),
      //   // 'page3':(context)=>Page3Class(),
      // }
       )
      );
}
