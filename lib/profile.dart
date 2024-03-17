import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:lenap/main.dart'; // Import the main page
import 'package:day_night_theme_flutter/day_night_theme_flutter.dart';

void main() {
  runApp(Profile());
}

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DayNightTheme(
      lightTheme: ThemeData(
        // Define your light theme here
        brightness: Brightness.light,
        // Other theme properties...
      ),
      darkTheme: ThemeData(
        // Define your dark theme here
        brightness: Brightness.dark,
        // Other theme properties...
      ),
      sunriseHour: 6,
      sunsetHour: 18,
      builder: (selectedTheme) {
        return MaterialApp(
          theme: selectedTheme,
          home: profile(),
        );
      },
    );
  }
}

class profile extends StatefulWidget {
  const profile({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<profile> {
  bool _isDarkMode = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        centerTitle: true,
        actions: [
          DayNightSwitcherButton(
            isDarkModeEnabled: _isDarkMode,
            onStateChanged: (isDarkModeEnabled) {
              setState(() {
                _isDarkMode = isDarkModeEnabled;
              });
            },
          ),
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/blurred-abstract-background-design1.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('assets/profile_image.jpg'),
              ),
              SizedBox(height: 20),
              AnimatedTextKit(
                animatedTexts: [
                  TypewriterAnimatedText(
                    'Virat Musk',
                    textStyle: const TextStyle(
                      color: Colors.white,
                      fontSize: 32.0,
                      fontWeight: FontWeight.bold,
                    ),
                    speed: const Duration(milliseconds: 150),
                  ),
                ],
                totalRepeatCount: 1,
                pause: const Duration(milliseconds: 1000),
                displayFullTextOnTap: true,
                stopPauseOnTap: true,
              ),
              SizedBox(height: 10),
              Text(
                'viratmusk@example.com',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Add functionality to edit profile
                },
                child: Text('Edit Profile'),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MyApp(),
                    ),
                  );
                },
                child: Text('Log Out'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DayNightSwitcherButton extends StatelessWidget {
  final bool isDarkModeEnabled;
  final void Function(bool) onStateChanged;

  const DayNightSwitcherButton({
    required this.isDarkModeEnabled,
    required this.onStateChanged,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(isDarkModeEnabled ? Icons.nightlight_round : Icons.wb_sunny),
      onPressed: () {
        onStateChanged(!isDarkModeEnabled);
      },
    );
  }
}
