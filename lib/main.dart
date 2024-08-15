import 'package:bankpick/pages/instruction_page_one.dart';
// import 'package:bankpick/pages/instruction_page_three.dart';
// import 'package:bankpick/pages/instruction_page_two.dart';
// import 'package:bankpick/pages/sign_in_page.dart';
import 'package:bankpick/pages/splash_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashPage(),
      // initialRoute: '/main',
      routes: {
        '/main': (context) => InstructionPageOne(),
        // '/introduction_page_one': (context) => InstructionPageTwo(),
        // '/introduction_page_two': (context) => InstructionPageThree(),
        // '/introduction_page_three': (context) => SignInPage(),
      },
    );
  }
}
