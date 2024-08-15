import 'package:bankpick/pages/instruction_page_two.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InstructionPageOne extends StatefulWidget {
  const InstructionPageOne({super.key});

  @override
  State<InstructionPageOne> createState() => _InstructionPageOneState();
}

class _InstructionPageOneState extends State<InstructionPageOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: EdgeInsets.only(top: 140),
              child: Image.asset('assets/images/image1.png'),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Image.asset(
            'assets/icons/slider1.png',
          ),
          SizedBox(
            height: 35,
          ),
          Text(
            "Fastest Payment in\n           the world",
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.w600,
              fontSize: 26,
              color: Color(0xFF1E1E2D),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Integrate multiple payment methods\n   to help you up the process quickly",
            style: GoogleFonts.poppins(
              fontSize: 14,
              color: Color(0xFF7E848D),
            ),
          ),
          SizedBox(
            height: 55,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => InstructionPageTwo()),
              );
            },
            child: Container(
              width: 300,
              height: 56,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Color(0xFF0066FF),
              ),
              child: Center(
                child: Text(
                  "Next",
                  style: TextStyle(
                    color: Color(0xFFFFFFFF),
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
