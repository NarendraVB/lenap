import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:lenap/camera.dart';
import 'package:lenap/profile.dart';
import 'package:lenap/how.dart';
import 'package:lenap/logout.dart';


// ignore: camel_case_types
class logout extends StatelessWidget {
  const logout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      // bottomNavigationBar: GNav(tabs: [
      //   GButton(
      //     icon: Icons.face,
      //     text: 'Profile',
      //   ),
      //   GButton(icon: Icons.question_mark_outlined, text: 'How To?'),
      //   GButton(icon: Icons.qr_code_scanner_outlined, text: 'Scan'),
      //   GButton(icon: Icons.exit_to_app, text: 'Log Out'),
      // ]),
    );
  }
}
