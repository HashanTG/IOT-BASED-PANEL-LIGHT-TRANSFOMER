import 'package:flutter/material.dart';
import 'package:smarthomeui/pages/splashcreen2.dart';

class SignInPage extends StatefulWidget {
  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  // Hardcoded credentials for demonstration
  final String _correctEmail = 'hashantharanga2001@gmail.com';
  final String _correctPassword = '1234';

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Sign In')),
      backgroundColor: Color.fromARGB(255, 192, 188, 188),
      body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Form(
            // Add a Form widget
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TextFormField(
                  controller: _emailController,
                  decoration: const InputDecoration(
                      labelText: 'Email',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15)))),
                  validator: (value) {
                    // Basic email validation
                    if (value == null || value.isEmpty) {
                      return 'Please enter your email';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 20),
                TextFormField(
                  controller: _passwordController,
                  decoration: const InputDecoration(
                      labelText: 'Password',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15)))),
                  obscureText: true,
                  validator: (value) {
                    // Basic password validation
                    if (value == null || value.isEmpty) {
                      return 'Please enter your password';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 20),
                // ElevatedButton(
                //   onPressed: () {
                //     if (_formKey.currentState!.validate()) {
                //       // Validate on submit
                //       if (_emailController.text == _correctEmail &&
                //           _passwordController.text == _correctPassword) {
                //         Navigator.push(
                //           context,
                //           MaterialPageRoute(
                //               builder: (context) => const splashscreen2()),
                //         );
                //       } else {
                //         ScaffoldMessenger.of(context).showSnackBar(
                //             const SnackBar(
                //                 content: Text('Incorrect email or password')));
                //       }
                //     }
                //   },
                //   child: Text('Sign In'),
                // ),

                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      fixedSize: const Size(150, 50),
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      backgroundColor: Color.fromARGB(255, 38, 39, 38)),
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      // Validate on submit
                      if (_emailController.text == _correctEmail &&
                          _passwordController.text == _correctPassword) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const splashscreen2()),
                        );
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                                content: Text('Incorrect email or password')));
                      }
                    }
                  },
                  child: const Text(
                    'Start',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
