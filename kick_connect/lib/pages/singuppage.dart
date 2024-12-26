import 'package:flutter/material.dart';
import 'package:kick_connect/pages/loginpage.dart'; // Replace with your actual next screen after sign up
import 'package:kick_connect/pages/startingpage.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();
  final _phoneController = TextEditingController();
  final _locationController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.black87, Colors.green.shade600],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "FUTSAL PLAYER CONNECT",
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2,
                      color: Colors.greenAccent.shade400,
                      shadows: [
                        Shadow(
                          color: Colors.black,
                          blurRadius: 4,
                          offset: Offset(2, 2),
                        ),
                      ],
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 8),
                  Text(
                    "Create your account",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white70,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 50),
                  // Name Input
                  _buildTextField(_nameController, 'Name'),
                  SizedBox(height: 20),
                  // Email Input
                  _buildTextField(_emailController, 'Email'),
                  SizedBox(height: 20),
                  // Phone Number Input
                  _buildTextField(_phoneController, 'Phone Number'),
                  SizedBox(height: 20),
                  // Location Input
                  _buildTextField(_locationController, 'Location'),
                  SizedBox(height: 20),
                  // Password Input
                  _buildTextField(_passwordController, 'Password',
                      obscureText: true),
                  SizedBox(height: 20),
                  // Confirm Password Input
                  _buildTextField(
                      _confirmPasswordController, 'Confirm Password',
                      obscureText: true),
                  SizedBox(height: 30),
                  // Sign Up Button
                  OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      backgroundColor: Colors.black87,
                      foregroundColor: Colors.greenAccent,
                      padding:
                          EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                      side: BorderSide(
                          color: Colors.greenAccent.shade400, width: 2),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    onPressed: () {
                      // Add sign up functionality here
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => StartingPage()),
                      );
                    },
                    child: Text(
                      "SIGN UP",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1,
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  // Already have an account? Login Link
                  TextButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => Loginpage()),
                      );
                    },
                    child: Text(
                      "Already have an account? Login",
                      style: TextStyle(color: Colors.greenAccent.shade400),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  // Text field builder to keep the original design from LoginPage
  Widget _buildTextField(TextEditingController controller, String labelText,
      {bool obscureText = false}) {
    return TextField(
      controller: controller,
      obscureText: obscureText,
      style: TextStyle(color: Colors.white),
      decoration: InputDecoration(
        labelText: labelText,
        labelStyle: TextStyle(color: Colors.white70),
        filled: true,
        fillColor: Colors.black45,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide.none,
        ),
        contentPadding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
      ),
    );
  }
}
