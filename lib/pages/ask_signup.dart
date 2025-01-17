import 'package:dealsmart/pages/letsdodeal.dart';
import 'package:dealsmart/pages/login.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

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
                    'assets/images/background.png'), // Ensure the image is in your assets folder
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Content
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  // App Logo or Title

                  const SizedBox(height: 40),
                  Image.asset(
                    'assets/images/logo.png', // Add your logo path here
                    height: 80,
                  ),
                  const SizedBox(height: 20),

                  // Fancy Heading
                  Text(
                    'Create an Account',
                    style: TextStyle(
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      shadows: [
                        Shadow(
                          color: Colors.black.withOpacity(0.3),
                          blurRadius: 8,
                          offset: const Offset(2, 2),
                        ),
                      ],
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 20),
                  // Google Sign-Up Button
                  ElevatedButton.icon(
                    onPressed: () {
                      // Handle Google Sign-Up
                    },
                    icon: Image.asset(
                      'assets/images/google_logo.png', // Add a Google icon to your assets folder
                      height: 24,
                    ),
                    label: const Text('Sign Up with Google'),
                    style: ElevatedButton.styleFrom(
                      // primary: Colors.white,
                      // onPrimary: Colors.black,
                      padding:
                          const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Text("or"),
                  const SizedBox(height: 20),
                  // Email/Mobile Sign-Up Button
                  ElevatedButton(
                    onPressed: () {
                      // Handle Email/Mobile Sign-Up LetsDoDailyDealPage
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                LetsDoDailyDealPage()), // Replace with your Sign-In screen
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      // primary: Colors.blueAccent,
                      // onPrimary: Colors.white,
                      padding:
                          const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: Text('Sign Up with Email / Mobile'),
                  ),
                  const SizedBox(height: 40),
                  // Terms and Conditions
                  const Text(
                    'By signing up, you agree to our Terms & Conditions and Privacy Policy.',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.white70,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  // Add this at the bottom of your Column widget
                  GestureDetector(
                    onTap: () {
                      // Navigate to the Sign-In screen
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const LoginPage()), // Replace with your Sign-In screen
                      );
                    },
                    child: const Padding(
                      padding: EdgeInsets.only(top: 20.0),
                      child: Text(
                        'Already on DealSmart? Sign in',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.blue,
                          decoration: TextDecoration.underline,
                        ),
                      ),
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
