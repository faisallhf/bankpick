import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    navigateTo();
  }

  void navigateTo() {
    Future.delayed(Duration(seconds: 4), () {
      Navigator.pushReplacementNamed(context, '/main');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/icons/icon.png'),
            Text(
              "BANKPICK",
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w600,
                fontSize: 35,
                color: Color(0xFF1E1E2D),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
