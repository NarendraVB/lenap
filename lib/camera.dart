import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:lenap/profile.dart';
import 'package:lenap/how.dart';
import 'package:lenap/logout.dart';
import 'package:lenap/build.dart'; // Import the BuildPage

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
      home: Scaffold(
        appBar: _selectedIndex == 2
            ? AppBar(
                title: Text('Camera'),
                centerTitle: true,
              )
            : null,
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/blurred-abstract-background-design1.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: _getPage(_selectedIndex),
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Color.fromRGBO(146, 144, 195, 1),
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
          selectedItemColor: Color(0xFF9290C3),
          unselectedItemColor: Color(0xFF9290C3),
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
        return Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton.icon(
                    onPressed: () {
                      _pickImage(ImageSource.gallery);
                    },
                    icon: Icon(Icons.photo_library),
                    label: Text('Gallery'),
                  ),
                  SizedBox(width: 20),
                  ElevatedButton.icon(
                    onPressed: () {
                      _pickImage(ImageSource.camera);
                    },
                    icon: Icon(Icons.camera_alt),
                    label: Text('Camera'),
                  ),
                ],
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Add functionality for the Proceed button
                },
                child: Text('Proceed'),
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0), // Square-shaped button
                  ),
                ),
              ),
            ],
          ),
        );
      case 3:
        return BuildPage(); // Navigate to BuildPage
      default:
        return Container();
    }
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  Future<void> _pickImage(ImageSource source) async {
    final picker = ImagePicker();
    final pickedImage = await picker.pickImage(source: source);
    if (pickedImage != null) {
      print('Image picked from $source: ${pickedImage.path}');
    }
  }
}

void main() {
  runApp(camera());
}
