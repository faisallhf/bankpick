import 'package:bankpick/pages/navigation_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
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
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => NavigationPage()),
                    );
                  },
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
              ),
              Text(
                "Profile",
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
                    Icons.person,
                    size: 35,
                  ),
                ),
              ),
            ],
          ),
          // Appbar ends here
          Row(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Container(
                    width: 80,
                    height: 80,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(60),
                      image: DecorationImage(
                        image: AssetImage("assets/images/profile.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20), // Adding left padding
                child: Column(
                  crossAxisAlignment:
                      CrossAxisAlignment.start, // Aligns texts to the left
                  children: [
                    Text(
                      "Faisal Khan",
                      style: GoogleFonts.poppins(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Flutter Developer",
                      style: GoogleFonts.poppins(
                        fontSize: 12,
                        color: Color(0xFF7E848D),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Expanded(
            child: ListView(
              children: [
                ListTile(
                  title: Text(
                    "Personal Information",
                    style: GoogleFonts.poppins(
                      fontSize: 15,
                    ),
                  ),
                  leading: Icon(
                    Icons.person,
                    size: 27,
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    size: 20,
                    color: Color(0xFF7E848D),
                  ),
                ),
                ListTile(
                  title: Text(
                    "Payment Preferences",
                    style: GoogleFonts.poppins(
                      fontSize: 15,
                    ),
                  ),
                  leading: Icon(
                    Icons.money_sharp,
                    size: 27,
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    size: 20,
                    color: Color(0xFF7E848D),
                  ),
                ),
                ListTile(
                  title: Text(
                    "Banks and Cards",
                    style: GoogleFonts.poppins(
                      fontSize: 15,
                    ),
                  ),
                  leading: Icon(
                    Icons.credit_card_outlined,
                    size: 27,
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    size: 20,
                    color: Color(0xFF7E848D),
                  ),
                ),
                ListTile(
                  title: Text(
                    "Notifications",
                    style: GoogleFonts.poppins(
                      fontSize: 15,
                    ),
                  ),
                  leading: Icon(
                    Icons.notifications_outlined,
                    size: 27,
                  ),
                  trailing: Stack(
                    // clipBehavior: Clip.none,
                    children: [
                      Container(
                        width: 25,
                        height: 25,
                        decoration: BoxDecoration(
                          color: Colors.red,
                          shape: BoxShape.circle,
                        ),
                        child: Center(
                          child: Text(
                            "2",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                ListTile(
                  title: Text(
                    "Message Center",
                    style: GoogleFonts.poppins(
                      fontSize: 15,
                    ),
                  ),
                  leading: Icon(
                    Icons.message_outlined,
                    size: 27,
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    size: 20,
                    color: Color(0xFF7E848D),
                  ),
                ),
                ListTile(
                  title: Text(
                    "Address",
                    style: GoogleFonts.poppins(
                      fontSize: 15,
                    ),
                  ),
                  leading: Icon(
                    Icons.location_on_outlined,
                    size: 27,
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    size: 20,
                    color: Color(0xFF7E848D),
                  ),
                ),
                ListTile(
                  title: Text(
                    "Settings",
                    style: GoogleFonts.poppins(
                      fontSize: 15,
                    ),
                  ),
                  leading: Icon(
                    Icons.settings_outlined,
                    size: 27,
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    size: 20,
                    color: Color(0xFF7E848D),
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
