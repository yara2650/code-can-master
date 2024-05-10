import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:codecansecond/dialogeUtils.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
//import 'firstquestionunderstand.dart';
//import 'understandfirst.dart';
import 'package:codecansecond/departments/understandchild/understandfirst.dart';

class ChildInfo extends StatefulWidget {
  State<ChildInfo> createState() => _pg();
}

class _pg extends State<ChildInfo> {
  var gender = 'انثي';
  int day = 0;
  int year = 0;
  int month = 0;
  String FirstName = " ",
      SecondName = " ",
      phone = " ",
      password = " ",
      ConfirmPassword = " ";
  String alerts = " ";
  var formKey = GlobalKey<FormState>();
  var nameController = TextEditingController();
  var phoneController = TextEditingController();
  var passwordController = TextEditingController();
  var confirmController = TextEditingController();
  @override
  Widget build(BuildContext buildcontext) {
    return SafeArea(
      child: Material(
          child: Form(
        key: formKey,
        child: Stack(
          children: [
            Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                  image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage('images/backgroungp3.png'),
              )),
            ),
            Positioned(
              top: 0,
              left: 5,
              child: Image(
                image: AssetImage('images/appicon.png'),
                width: 90,
                height: 90,
              ),
            ),
            Positioned(
              top: 30,
              left: 130,
              child: Container(
                width: 110,
                height: 110,
                // margin: EdgeInsets.only(top: 5,left: 25),
                padding: EdgeInsets.all(1),
                decoration: BoxDecoration(
                    color: Color(0xff0A0E6D),
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                          color: Color(0xff235B7F),
                          blurRadius: 4,
                          spreadRadius: 0,
                          offset: Offset(-2, 6)),
                    ]),
                child: CircleAvatar(
                  radius: 91,
                  backgroundImage: AssetImage(
                    'images/girl.jpg',
                  ),
                ),
              ),
            ),
            // Positioned(
            //     top: 100,
            //     left: 193,
            //     child: IconButton(
            //       onPressed: () {},
            //       icon: Icon(Icons.add_circle,
            //           color: Color(0xff235B7F), weight: 65),
            //     )),
            Positioned(
              top: 150,
              left: 30,
              child: Column(children: [
                SizedBox(
                  height: 40,
                ),
                SizedBox(
                    width: 320,
                    height: 55,
                    child: TextFormField(
                      controller: nameController,
                      validator: (value) {
                        if (value!.trim().isEmpty || value == null) {
                          return "من فضلك ادخل بريدك الالكتروني";
                        } else if (value!.trim().endsWith('@child.com')) {
                          return null;
                        } else {
                          return " @child.com يجب ان ينتهي بريدك الالكنروني ب ";
                        }
                      },
                      decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25),
                            borderSide:
                                BorderSide(color: Color(0xff1B6EA5), width: 3),
                          ), //0xff1B6EA5 0xff007CB2
                          prefixIcon: Padding(
                            padding: EdgeInsets.only(left: 30, right: 60),
                            child: Image.asset(
                              'images/emails.png',
                              width: 50,
                              height: 50,
                            ),
                          ),
                          hintText: "ادخل البريد الالكتروني",
                          contentPadding: EdgeInsets.symmetric(vertical: 6),
                          hintStyle: TextStyle(
                            fontSize: 15,
                            color: Color(0xff555555),
                          )),
                    )),
                SizedBox(height: 15),
                SizedBox(
                    width: 320,
                    height: 55,
                    child: TextFormField(
                      controller: phoneController,
                      validator: (value) {
                        if (value!.trim().isEmpty || value == null) {
                          return "من فضلك ادخل رقم الهاتف الخاص بك";
                        }
                        if (value.trim().length != 11) {
                          return "يجب ان يكون الرقم مكون من 11 رقم";
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25),
                            borderSide:
                                BorderSide(color: Color(0xff1B6EA5), width: 3),
                          ), //0xff1B6EA5 0xff007CB2
                          // prefixIcon: Icon(Icons.person_search_rounded),
                          prefixIcon: Padding(
                            padding: EdgeInsets.only(left: 45, right: 100),
                            child: Image.asset(
                              'images/callingicon.png',
                              width: 20,
                              height: 20,
                            ),
                          ),
                          hintText: " ادخل رقم الهاتف",
                          contentPadding: EdgeInsets.symmetric(vertical: 6),
                          hintStyle: TextStyle(
                            fontSize: 15,
                            color: Color(0xff555555),
                          )),
                    )),
                SizedBox(height: 15),
                SizedBox(
                    width: 320,
                    height: 55,
                    child: TextFormField(
                      controller: passwordController,
                      obscureText: true,
                      validator: (value) {
                        if (value!.trim().isEmpty || value == null) {
                          return "من فضلك ادخل كلمة السر الخاصة بك";
                        }
                        if (value.length < 6) {
                          return "يجب ان تكون كلمة السر مكونة من 6 ارقام علي الاقل";
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25),
                            borderSide:
                                BorderSide(color: Color(0xff1B6EA5), width: 3),
                          ), //0xff1B6EA5 0xff007CB2
                          // prefixIcon: Icon(Icons.person_search_rounded),
                          prefixIcon: Padding(
                            padding: EdgeInsets.only(left: 45, right: 110),
                            child: Image.asset(
                              'images/icon.png',
                              width: 20,
                              height: 20,
                            ),
                          ),
                          hintText: "ادخل كلمة السر",
                          contentPadding: EdgeInsets.symmetric(vertical: 6),
                          hintStyle: TextStyle(
                            fontSize: 15,
                            color: Color(0xff555555),
                          )),
                    )),
                SizedBox(height: 15),
                SizedBox(
                    width: 320,
                    height: 55,
                    child: TextFormField(
                      obscureText: true,
                      controller: confirmController,
                      validator: (value) {
                        if (value!.trim().isEmpty || value == null) {
                          return "من فضلك قم بتأكيد كلمة السر الخاصة بك";
                        }
                        if (passwordController.text != value) {
                          return "كلمة السر غير متطابقة";
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                          // fillColor: Color(0xff555555),

                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25),
                            borderSide:
                                BorderSide(color: Color(0xff1B6EA5), width: 3),
                          ), //0xff1B6EA5 0xff007CB2
                          // prefixIcon: Icon(Icons.person_search_rounded),
                          prefixIcon: Padding(
                            padding: EdgeInsets.only(left: 45, right: 110),
                            child: Image.asset(
                              'images/passwordicon.png',
                              width: 20,
                              height: 20,
                            ),
                          ),
                          hintText: "تاكيد كلمة السر",
                          contentPadding: EdgeInsets.symmetric(vertical: 6),
                          hintStyle: TextStyle(
                            fontSize: 15,
                            color: Color(0xff555555),
                          )),
                    )),
              ]),
            ),
            Positioned(
              top: 505,
              left: 20,
              child: PopupMenuButton(
                  itemBuilder: (BuildContext context) {
                    return <PopupMenuEntry<int>>[
                      for (int count = 2002; count < 2023; count++)
                        PopupMenuItem<int>(value: count, child: Text('$count')),
                    ];
                  },
                  onSelected: (v) {
                    year = v;
                  },
                  child: Container(
                    width: 100,
                    height: 40,
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xff1B6EA5), width: 3),
                      borderRadius: BorderRadius.circular(30),
                      gradient: LinearGradient(
                        colors: [Color(0xff8EC4F1), Color(0xffFFFFFF)],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(right: 4),
                          child: Text('سنة',
                              style: TextStyle(
                                  color: Color(0xff00567D), fontSize: 20)),
                        ),
                        Image(
                          image: AssetImage('images/greentriangle.png'),
                          width: 15,
                          height: 15,
                        ),
                      ],
                    ),
                  )),
            ),
            Positioned(
              top: 505,
              left: 130,
              child: PopupMenuButton(
                  itemBuilder: (BuildContext context) {
                    return <PopupMenuEntry<int>>[
                      for (int count = 1; count <= 12; count++)
                        PopupMenuItem<int>(value: count, child: Text('$count')),
                    ];
                  },
                  onSelected: (v) {
                    month = v;
                  },
                  child: Container(
                    width: 100,
                    height: 40,
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xff1B6EA5), width: 3),
                      borderRadius: BorderRadius.circular(30),
                      gradient: LinearGradient(
                        colors: [Color(0xff8EC4F1), Color(0xffFFFFFF)],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(right: 4),
                          child: Text('شهر',
                              style: TextStyle(
                                  color: Color(0xff00567D), fontSize: 20)),
                        ),
                        Image(
                          image: AssetImage('images/greentriangle.png'),
                          width: 15,
                          height: 15,
                        ),
                      ],
                    ),
                  )),
            ),
            Positioned(
              top: 505,
              left: 240,
              child: PopupMenuButton(
                  itemBuilder: (BuildContext context) {
                    return <PopupMenuEntry<int>>[
                      for (int count = 1; count <= 30; count++)
                        PopupMenuItem<int>(value: count, child: Text('$count')),
                    ];
                  },
                  onSelected: (v) {
                    day = v;
                  },
                  child: Container(
                    width: 100,
                    height: 40,
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xff1B6EA5), width: 3),
                      borderRadius: BorderRadius.circular(30),
                      gradient: LinearGradient(
                        colors: [Color(0xff8EC4F1), Color(0xffFFFFFF)],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(right: 4),
                          child: Text('يوم',
                              style: TextStyle(
                                  color: Color(0xff00567D), fontSize: 20)),
                        ),
                        //Text("اليوم",style: TextStyle(color: Color(0xff00567D),fontSize: 20)),
                        Image(
                          image: AssetImage('images/greentriangle.png'),
                          width: 15,
                          height: 15,
                        ),
                      ],
                    ),
                  )),
            ),
            Positioned(
              top: 570,
              left: 40,
              child: GestureDetector(
                onTap: () {
                  createAccountClicked();
                  // String FirstName,SecondName,phone,password,ConfirmPassword;
                  //   if(FirstName.isNotEmpty &&SecondName.isNotEmpty&&phone.isNotEmpty&&password.isNotEmpty&&ConfirmPassword.isNotEmpty){
                  //     if(password==ConfirmPassword){
                  //       if(phone.length==11){
                  //         setState(() {
                  //           alerts=" ";
                  //         });
                  //
                  //       }else{
                  //         setState(() {
                  //           alerts="phone number must be 11";
                  //           print(alerts);
                  //         });
                  //       }
                  //     }else{
                  //       setState(() {
                  //         alerts="password must be equal confirm password";
                  //         print(alerts);
                  //       });
                  //     }
                  //   }else if(FirstName.isEmpty ||SecondName.isEmpty||phone.isEmpty||password.isEmpty||ConfirmPassword.isEmpty){
                  //     setState(() {
                  //       alerts="all Fields shoude be field";
                  //       print(alerts);
                  //     });
                  //   }
                },
                child: Container(
                  width: 280,
                  height: 45,
                  decoration: BoxDecoration(
                    color: Color(0xff1B6EA5),
                    borderRadius: BorderRadius.circular(
                      31,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xff6194C1),
                        offset: Offset(0, 6),
                        blurRadius: 10,
                      ),
                    ],
                    border: Border.all(width: 1, color: Color(0xff007CB4)),
                  ),
                  child: Center(
                    child: Text(
                      "تسجيل الدخول",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 24,
                          color: Color(0xffFFFFFF)),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 630,
              left: 80,
              child: Center(
                child: Text(alerts,
                    style: TextStyle(color: Colors.red, fontSize: 10)),
              ),
            )
          ],
        ),
      )),
    );
  }

  var authService = FirebaseAuth.instance;
  void createAccountClicked() {
    if (formKey.currentState?.validate() == false) {
      return;
    }
    if (day == 0 || month == 0 || year == 0) {
      setState(() {
        alerts = "قم بأختيار تاريخ ميلادك";
      });
    } else {
      showLoading(context, '...تحميل');
      authService
          .createUserWithEmailAndPassword(
        email: nameController.text,
        password: passwordController.text,
      )
          .then((UserCredential) {
        hideLoading(context);
        showMessage(context, 'تم تسجيل بياناتك بنجاح');
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) {
            return UnderstandFirst();
          },
        ));
      }).onError((error, stackTrace) {
        hideLoading(context);
        showMessage(context, error.toString());
      });
    }
  }
}
/////////////////////
// Row(
//   mainAxisAlignment: MainAxisAlignment.spaceAround,
//   crossAxisAlignment: CrossAxisAlignment.center,
//   children: [
//
//     SizedBox(
//
//         child:Container(
//           width: 130,
//           height: 50,
//           //padding:EdgeInsets.symmetric(vertical:double.minPositive),
//           decoration: BoxDecoration(
//             border: Border.all(color: Color(0xff1B6EA5),width:3 ),
//             borderRadius: BorderRadius.circular(25),
//             gradient: LinearGradient(colors: [
//               Color(0xff8EC4F1),
//               Color(0xffFFFFFF)
//             ],
//               begin: Alignment.topCenter,
//               end: Alignment.bottomCenter,
//             ),
//           ),
//           child: RadioListTile(
//             contentPadding: EdgeInsets.only(top:0,left: 8),
//             title: Text("انثي",style: TextStyle(color: Color(0xff00567D))),
//             value: 'انثي',
//             groupValue:gender,
//             onChanged: (v){
//               setState(() {
//                 gender=v.toString();
//               });
//             },
//           ) ,
//         )
//     ),
//     SizedBox(
//
//         child:Container(
//           width: 120,
//           height: 50,
//           padding: EdgeInsets.only(right:0),
//           decoration: BoxDecoration(
//             border: Border.all(color: Color(0xff1B6EA5),width:3 ),
//             borderRadius: BorderRadius.circular(30),
//             gradient: LinearGradient(colors: [
//               Color(0xff8EC4F1),
//               Color(0xffFFFFFF)
//             ],
//               begin: Alignment.topCenter,
//               end: Alignment.bottomCenter,
//
//             ),
//           ),
//           child: RadioListTile(
//           //  contentPadding: EdgeInsets.only(top:0),
//             title: Text("زكر",style: TextStyle(color: Color(0xff00567D))),
//             value: 'زكر',
//             groupValue:gender,
//             onChanged: (v){
//               setState(() {
//                 gender=v.toString();
//               });
//             },
//           ) ,
//         )
//     ),
//   ],
// ),
