import 'package:flutter/material.dart';

class CardsPage extends StatefulWidget {
  const CardsPage({super.key});

  @override
  State<CardsPage> createState() => _CardsPageState();
}

class _CardsPageState extends State<CardsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 200),
        child: Container(
          height: 200,
          width: 200,
          color: Color.fromARGB(255, 146, 79, 214),
          child: Text(
            "Cards Page",
            style: TextStyle(fontSize: 40, fontWeight: FontWeight.w900),
          ),
        ),
      ),
    );
  }
}
