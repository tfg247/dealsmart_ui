import 'package:flutter/material.dart';

class LetsDoDailyDealPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background Image
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                    'assets/images/background.png'), // Replace with your background image
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            top: 40, // Adjust for your app's layout or safe area
            left: 20,
            child: IconButton(
              onPressed: () {
                Navigator.pop(context); // Navigates back to the previous screen
              },
              icon: Icon(Icons.arrow_back, color: Colors.white),
            ),
          ),
          // Page Content
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  // PNG Picture
                  Image.asset(
                    'assets/images/workout.png', // Replace with your .png picture
                    height: 120,
                  ),
                  SizedBox(height: 40),
                  // Heading
                  const Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Let's do your Daily",
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        " Deal",
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),

                  SizedBox(height: 40),
                  // TextField: Current Location
                  TextField(
                    decoration: InputDecoration(
                      labelText: "What is your current location",
                      labelStyle: TextStyle(color: Colors.black54),
                      filled: true,
                      fillColor: Colors.white38.withOpacity(0.8),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        // borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                  SizedBox(height: 30),
                  // TextField: City
                  // TextField(
                  //     decoration: InputDecoration(
                  //       hintText: 'Username',
                  //       prefixIcon: const Icon(Icons.person),
                  //       border: OutlineInputBorder(
                  //         borderRadius: BorderRadius.circular(10),
                  //       ),
                  //       filled: true,
                  //       fillColor: Colors.white.withOpacity(0.9),
                  //     ),
                  //   ),
                  TextField(
                    decoration: InputDecoration(
                      labelText: "What is your city",
                      labelStyle: TextStyle(color: Colors.black54),
                      filled: true,
                      fillColor: Colors.white38.withOpacity(0.8),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        // borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                  SizedBox(height: 30),
                  // Next Button
                  ElevatedButton(
                    onPressed: () {
                      // Add your navigation logic here
                    },
                    style: ElevatedButton.styleFrom(
                      shape: CircleBorder(),
                      padding: EdgeInsets.all(20),
                      backgroundColor: Colors.blueAccent,
                    ),
                    child: Icon(
                      Icons.arrow_forward_ios_outlined,
                      color: Colors.white,
                      size: 24,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Next",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black87,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
