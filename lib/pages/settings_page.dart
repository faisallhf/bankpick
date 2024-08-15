import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  // VARAIBLES

  bool biometricEnabled = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 50, horizontal: 20),
                child: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 241, 215, 215),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Icon(
                      Icons.arrow_back_ios,
                    ),
                  ),
                ),
              ),
              Text(
                "Settings",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 20),
                child: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 241, 215, 215),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Icon(
                    Icons.exit_to_app,
                    size: 35,
                  ),
                ),
              ),
            ],
          ),
          // Appbar ends here
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 22),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                "General",
                style: TextStyle(
                  color: Color(0xFFA2A2A7),
                  fontSize: 15,
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                ListTile(
                  title: Text(
                    "Language",
                    style: GoogleFonts.poppins(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "English",
                        style: GoogleFonts.poppins(
                          fontSize: 15,
                          color: Color(0xFF7E848D),
                        ),
                      ),
                      SizedBox(width: 8),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 20,
                        color: Color(0xFF7E848D),
                      ),
                    ],
                  ),
                ),
                ListTile(
                  title: Text(
                    "My Profile",
                    style: GoogleFonts.poppins(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    size: 20,
                    color: Color(0xFF7E848D),
                  ),
                ),
                ListTile(
                  title: Text(
                    "Contact Us",
                    style: GoogleFonts.poppins(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    size: 20,
                    color: Color(0xFF7E848D),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 8, horizontal: 22),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Security",
                      style: TextStyle(
                        color: Color(0xFFA2A2A7),
                        fontSize: 15,
                      ),
                    ),
                  ),
                ),
                ListTile(
                  title: Text(
                    "Change Password",
                    style: GoogleFonts.poppins(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    size: 20,
                    color: Color(0xFF7E848D),
                  ),
                ),
                ListTile(
                  title: Text(
                    "Privacy Policy",
                    style: GoogleFonts.poppins(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    size: 20,
                    color: Color(0xFF7E848D),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 8, horizontal: 22),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Choose what data you share with us",
                      style: TextStyle(
                        color: Color(0xFFA2A2A7),
                        fontSize: 15,
                      ),
                    ),
                  ),
                ),
                ListTile(
                  title: Text(
                    "Biometric",
                    style: GoogleFonts.poppins(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Switch(
                        value: biometricEnabled,
                        onChanged: (value) {
                          setState(() {
                            biometricEnabled = value;
                          });
                        },
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
