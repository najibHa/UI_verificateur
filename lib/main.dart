import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'UI Layout',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

// Custom Clipper for quarter circle shape

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background Image
          Positioned.fill(
            child: Image.asset(
              'assets/background.jpg', // Replace with your background image
              fit: BoxFit.cover,
            ),
          ),

          // Top-right image container (Quarter circle)
          Positioned(
            top: 0,
            right: 0,
            child: Container(
              width: 200.0, // Width of the container
              height: 200.0, // Height of the container
              decoration: BoxDecoration(
                color: Colors.blueGrey, // Background color (optional)
                borderRadius: BorderRadius.only(
                  topLeft:
                      Radius.circular(0.0), // Quarter circle on the top-left
                  bottomLeft: Radius.circular(180.0),
                  topRight: Radius.circular(0.0),
                  bottomRight: Radius.circular(0.0),
                ),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(
                      0.0), // Keep the quarter-circle shape on image
                  bottomLeft: Radius.circular(180.0),
                  topRight: Radius.circular(0.0),
                  bottomRight: Radius.circular(0.0),
                ),
                child: Image.asset(
                  'assets/top_right_image.jpg', // Your image asset here
                  fit: BoxFit
                      .cover, // Cover the whole container while maintaining the aspect ratio
                ),
              ),
            ),
          ),
          // Bottom-left image container (Quarter circle)
          Positioned(
            bottom: 0,
            left: 0,
            child: Container(
              width: 200.0, // Width of the container
              height: 200.0, // Height of the container
              decoration: BoxDecoration(
                color: Colors.blueGrey, // Background color (optional)
                borderRadius: BorderRadius.only(
                  topLeft:
                      Radius.circular(0.0), // Quarter circle on the top-left
                  bottomLeft: Radius.circular(0.0),
                  topRight: Radius.circular(180.0),
                  bottomRight: Radius.circular(0.0),
                ),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(
                      0.0), // Keep the quarter-circle shape on image
                  bottomLeft: Radius.circular(0.0),
                  topRight: Radius.circular(180.0),
                  bottomRight: Radius.circular(0.0),
                ),
                child: Image.asset(
                  'assets/bottom_left_image.jpg', // Your image asset here
                  fit: BoxFit
                      .cover, // Cover the whole container while maintaining the aspect ratio
                ),
              ),
            ),
          ),
          // Center image with a button below
          Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                // Center image
                Image.asset(
                  'assets/center_image.png', // Replace with your center image
                  width: 150,
                ),

                const SizedBox(
                    height: 20), // Space between the image and button

                // Button
                ElevatedButton(
                  onPressed: () {
                    // Action when button is pressed
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(
                        0xFFD1805A0B), // Set the color using the hex code #D1805A0B
                    minimumSize:
                        Size(400, 50), // Set the width to 400 and height to 50
                  ),
                  child: const Text(
                    "Let's get started",
                    style: TextStyle(
                        color: Colors
                            .white), // Set the text color to white for contrast
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
