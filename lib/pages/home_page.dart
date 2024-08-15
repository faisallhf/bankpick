import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 200),
        child: Container(
          height: 200,
          width: 200,
          color: Colors.amberAccent,
          child: Text(
            "Home Page",
            style: TextStyle(fontSize: 40, fontWeight: FontWeight.w900),
          ),
        ),
      ),
    );
  }
}
