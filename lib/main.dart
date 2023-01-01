
// ignore_for_file: unused_import

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'page1.dart';
import 'page2.dart';
import 'page3.dart';
import 'page4.dart';
import 'page_2.dart';
// Future main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp();
//   runApp(MyApp());
// }
//دالة الرئيسيه
Future main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/',
    routes: {
      '/': (context) => const MyApp(),
      'page1': (context) => const screen1(),
      'page2': (context) => const Screen2(),
      'page3': (context) => const Screen3(),
      'page4': (context) => const Screen4(),
      'page_1':(context) => const MyPage2(MyPage2: MyPage2,)

    },
  ));
}

// قائمه بها الاربع شاشات screen1 + screen2 + screen3 + screen4
List<Widget> widgets = [
  const screen1(),
  const Screen2(),
  const Screen3(),
  const Screen4(),
  const MyPage2(MyPage2: MyPage2,)
];

//StatefulWidget
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with SingleTickerProviderStateMixin {
  late final TabController controller;
  //متغير عشان يجيب اول شاشه في بداية التشغيل للابلكيشن
  int _index = 0;
  String myText = "Start";

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    controller = TabController(
      length: widgets.length,
      initialIndex: _index,
      vsync: this,
    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          //tab bar view
          TabBarView(
            controller: controller,
            children: widgets,
          ),
          //التحكم في الابعاد
          Positioned(
            bottom: 100,
            height: 60,
            left: 147,
            child: TabPageSelector(
              controller: controller,
              selectedColor: Colors.grey,
              indicatorSize: 15,
              color: Colors.white,
            ),
          ),
        ],
      ),
      //التنقل من اول شاشه الي اخر شاشه
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,

      floatingActionButton: SizedBox(
        width: 180,
        height: 50,
        child: FloatingActionButton.extended(
          onPressed: () {
            setState(() {
              _index++;
              controller.animateTo(_index);
              if (_index == 0) {
                myText = "Start";
              } else if (_index == 1) {
                myText = "Next";
              } else if (_index == 2) {
                myText = "Next";
              } else if (_index == 3) {
                myText = "Get Start";
              }
              else if (_index>3){
                Navigator.push(context,MaterialPageRoute(builder: (context)=> MyPage2(MyPage2: MyPage2,)));

              }
            });
          },
          hoverElevation: 0,
          elevation: 0,
          label: Text(
            myText,
            textAlign: TextAlign.center,
            style: GoogleFonts.imFellFrenchCanon(
              textStyle: const TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
        ),
      ),
    );
  }
}
