import 'package:flutter/material.dart';
import 'package:lenap/camera.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.red),
      home: const LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              "assets/blurred-abstract-background-design1.jpg",
              fit: BoxFit.cover,
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text(
                  "NAP'Lé",
                  style: GoogleFonts.getFont(
                    'Roboto', // Use Roboto font
                    textStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 55,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Davish', // Font family 'Davish'
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  width: 100,
                  height: 100,
                  child: Image.asset(
                    "assets/logo.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  onPressed: () {
                    // Navigate to camera page
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const camera(),
                    ));
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: Color(0xFF070F2B),
                    minimumSize: const Size(300, 40),
                  ),
                  child: const Text("Login"),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Navigate to register page
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF9290C3),
                    foregroundColor: Colors.white,
                    minimumSize: const Size(300, 40),
                  ),
                  child: const Text("Register"),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "------------ Or continue with ------------",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        // Navigate to camera page
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const camera(),
                        ));
                      },
                      style: ElevatedButton.styleFrom(
                        shape: CircleBorder(),
                        padding: EdgeInsets.zero,
                        backgroundColor: Colors.transparent,
                      ),
                      child: Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage(
                                "assets/flat-color-icons_google.png"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Container(
                      width: 60,
                      height: 60,
                      child: Image.asset(
                        "assets/Vector.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
