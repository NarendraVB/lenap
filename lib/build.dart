import 'dart:io';

import 'package:flutter/material.dart';

class BuildPage extends StatelessWidget {
  late File? _pickedImage; // Declare _pickedImage as nullable

  BuildPage({Key? key, File? image}) : super(key: key) {
    _pickedImage = image; // Initialize _pickedImage with the passed image
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Build'),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              "assets/blurred-abstract-background-design1.jpg",
              fit: BoxFit.cover,
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Left side: List of furniture items
              Expanded(
                flex: 1,
                child: Container(
                  color: Colors.grey[200],
                  child: ListView.builder(
                    itemCount: 10, // Number of furniture items
                    itemBuilder: (context, index) {
                      String furnitureName = '';
                      IconData iconData = Icons.local_offer; // Default icon
                      switch (index) {
                        case 0:
                          furnitureName = 'Sofa';
                          iconData = Icons.weekend;
                          break;
                        case 1:
                          furnitureName = 'Tables';
                          iconData = Icons.table_chart;
                          break;
                        case 2:
                          furnitureName = 'Chairs';
                          iconData = Icons.chair;
                          break;
                        // Add more cases for other furniture types
                        default:
                          furnitureName = 'Furniture $index';
                          break;
                      }
                      return Container(
                        width: 80, // Set the width of the box
                        height: 80, // Set the height of the box
                        margin: EdgeInsets.all(8), // Add margin between items
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              iconData, // Use specific icon for each item
                              size: 32, // Adjust icon size as needed
                            ),
                            SizedBox(height: 4), // Add spacing between icon and text
                            Text(
                              furnitureName, // Specific furniture name
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ),
              // Right side: Space for importing 3D model and previewing image
              Expanded(
                flex: 2,
                child: Container(
                  color: Colors.white, // Change to desired background color
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // Preview the picked image
                      if (_pickedImage != null)
                        Container(
                          height: 200, // Adjust the height as needed
                          child: Image.file(
                            _pickedImage!,
                            fit: BoxFit.cover,
                          ),
                        ), // Display picked image if not null
                      SizedBox(height: 20),
                      ElevatedButton(
                        onPressed: () {
                          // Add functionality to proceed with the picked image
                        },
                        child: Text('Proceed'), // Button to proceed
                      ),
                      SizedBox(height: 20),
                      Text(
                        '3D Model Space',
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
