import 'package:bankpick/pages/instruction_page_three.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InstructionPageTwo extends StatefulWidget {
  const InstructionPageTwo({super.key});

  @override
  State<InstructionPageTwo> createState() => _InstructionPageTwoState();
}

class _InstructionPageTwoState extends State<InstructionPageTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: EdgeInsets.only(top: 100),
              child: Image.asset('assets/images/image2.png'),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Image.asset(
            'assets/icons/slider2.png',
          ),
          SizedBox(
            height: 35,
          ),
          Text(
            "       The most Secure\n Platfrom for Customer",
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
            "     Built-in Fingerprint, face recognition\n and more, keeping you completely safe",
            style: GoogleFonts.poppins(
              fontSize: 14,
              color: Color(0xFF7E848D),
            ),
          ),
          SizedBox(
            height: 45,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => InstructionPageThree()),
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
