import 'package:bankpick/pages/navigation_page.dart';
import 'package:bankpick/pages/instruction_page_three.dart';
import 'package:bankpick/pages/sign_up_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  // VARIABLES
  bool _obsecureText = true;
  TextEditingController _passwordEditingController =
      new TextEditingController();

  // FUNCTIONS

  void _showPassword() {
    setState(() {
      _obsecureText = !_obsecureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 20, top: 70),
            child: Align(
              alignment: Alignment.topLeft,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => InstructionPageThree()),
                  );
                },
                child: Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 226, 212, 212),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 22),
                    child: Icon(
                      Icons.arrow_back_ios,
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Container(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                "Sign In",
                style: GoogleFonts.poppins(
                  fontSize: 35,
                  color: Color(0xFF1E1E2D),
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Email Address",
                    style: TextStyle(
                      color: Color(0xFFA2A2A7),
                    ),
                  ),
                ),
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    // labelText: 'Email Address',
                    suffixStyle: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.normal,
                      fontSize: 30,
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.black.withOpacity(0.5), width: 2),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.black.withOpacity(0.5), width: 2),
                    ),
                    prefixIcon: Icon(
                      Icons.email_outlined,
                      color: Colors.black.withOpacity(0.5),
                    ),
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Password",
                    style: TextStyle(
                      color: Color(0xFFA2A2A7),
                    ),
                  ),
                ),
                TextFormField(
                  controller: _passwordEditingController,
                  obscureText: _obsecureText,
                  keyboardType: TextInputType.visiblePassword,
                  decoration: InputDecoration(
                    // labelText: 'Email Password,
                    suffixStyle: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.normal,
                      fontSize: 30,
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.black.withOpacity(0.5), width: 2),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.black.withOpacity(0.5), width: 2),
                    ),
                    prefixIcon: Icon(
                      Icons.lock_outline,
                      color: Colors.black.withOpacity(0.5),
                    ),
                    suffixIcon: IconButton(
                      // Icons.visibility_off_outlined,
                      // color: Colors.black.withOpacity(0.5),
                      icon: Icon(_obsecureText
                          ? Icons.visibility_outlined
                          : Icons.visibility_off_outlined),
                      onPressed: _showPassword,
                    ),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Container(
                  width: 300,
                  height: 56,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Color(0xFF0066FF),
                  ),
                  child: Center(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => NavigationPage()),
                        );
                      },
                      child: Text(
                        "Sign In",
                        style: TextStyle(
                          color: Color(0xFFFFFFFF),
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 75),
                  child: Row(
                    children: [
                      Text(
                        "I'm a new user. ",
                        style: TextStyle(
                          color: Colors.black.withOpacity(0.5),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SignUpPage()),
                          );
                        },
                        child: Text(
                          "Sign up",
                          style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
