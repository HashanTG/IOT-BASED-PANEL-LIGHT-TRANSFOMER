import 'package:flutter/material.dart';

import 'package:smarthomeui/pages/signin.dart';
import 'package:smarthomeui/pages/signup.dart';

class SignInSignUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          // Background styling
          gradient: LinearGradient(colors: [
            Color.fromARGB(255, 0, 0, 0),
            Color.fromARGB(255, 35, 39, 47)
          ]),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.app_registration_rounded,
                size: 100,
                color: Colors.white,
              ), // Your Logo
              const SizedBox(height: 40),
              _SignInButton(),
              const SizedBox(height: 20),
              _SignUpButton(),
              // Add social login buttons if desired
            ],
          ),
        ),
      ),
    );
  }
}

// Reusable button widgets (customize appearance further)
class _SignInButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        fixedSize: const Size(200, 50),
      ),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => SignInPage()),
        ); /* Navigate to sign-in screen */
      },
      child: const Text('Sign In'),
    );
  }
}

class _SignUpButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        fixedSize: const Size(200, 50),
      ),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => SignUpPage()),
        );
      },
      child: const Text('Sign Up'),
    );
  }
}
