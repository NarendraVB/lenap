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
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'How To Use This App:',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              '1. Step 1 description goes here.',
              style: TextStyle(fontSize: 16),
            ),
            Text(
              '2. Step 2 description goes here.',
              style: TextStyle(fontSize: 16),
            ),
            Text(
              '3. Step 3 description goes here.',
              style: TextStyle(fontSize: 16),
            ),
            // Add more steps as needed
          ],
        ),
      ),
    );
  }
}
