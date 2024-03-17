import 'package:flutter/material.dart';

class how extends StatelessWidget {
  const how({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('How To?'),
        centerTitle: true,
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/blurred-abstract-background-design1.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildStep(
                  'Step 1',
                  'Click or Upload the panoramic photo and proceed.',
                  'assets/s2.jpg', // Change the image path
                ),
                _buildStep(
                  'Step 2',
                  'Go to the build option',
                  'assets/s1.jpg', // Change the image path
                ),
                _buildStep(
                  'Step 3',
                  'Open your image which you have imported',
                  'assets/s1.jpg', // Change the image path
                ),
                // Add more steps as needed
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildStep(String title, String description, String imagePath) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        SizedBox(height: 10),
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.white, width: 2),
            borderRadius: BorderRadius.circular(8),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.asset(
              imagePath,
              width: double.infinity,
              height: 200, // Adjust the height as needed
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(height: 10),
        Text(
          description,
          style: TextStyle(fontSize: 16, color: Colors.white),
        ),
        SizedBox(height: 20), // Adjust spacing between steps as needed
      ],
    );
  }
}
