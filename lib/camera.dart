import 'package:flutter/material.dart';
import 'package:lenap/profile.dart';
import 'package:lenap/how.dart';
import 'package:lenap/logout.dart';

class camera extends StatefulWidget {
  const camera({Key? key}) : super(key: key);

  @override
  _CameraPageState createState() => _CameraPageState();
}

class _CameraPageState extends State<camera> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
        textTheme: TextTheme(
          // Set the text theme for the BottomNavigationBar labels
          bodyText1: TextStyle(color: Color(0xFF070F2B)),
          bodyText2: TextStyle(color: Color(0xFF070F2B)),
        ),
      ),
      home: Scaffold(
        body: _getPage(_selectedIndex),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.question_answer),
              label: 'How',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.camera_alt),
              label: 'Scan',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.build),
              label: 'Build',
            ),
          ],
          selectedIconTheme: IconThemeData(color: Color(0xFF9290C3)),
          unselectedIconTheme: IconThemeData(color: Color(0xFF9290C3)),
          selectedLabelStyle: TextStyle(color: Color(0xFF070F2B)),
          unselectedLabelStyle: TextStyle(color: Color(0xFF070F2B)),
        ),
      ),
    );
  }

  Widget _getPage(int index) {
    switch (index) {
      case 0:
        return const profile();
      case 1:
        return const how();
      case 2:
        // Replace with your camera widget
        return Container();
      case 3:
        return const logout();
      default:
        return Container();
    }
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
