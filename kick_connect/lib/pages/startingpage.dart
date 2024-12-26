import 'package:flutter/material.dart';
import 'package:kick_connect/pages/loginpage.dart';

class StartingPage extends StatelessWidget {
  const StartingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.black87,
              Colors.green.shade600
            ], // Slightly brighter green
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min, // Vertically centers the content
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
                "Unite. Play. Compete.",
                style: TextStyle(
                  fontSize: 16,
                  fontStyle: FontStyle.italic,
                  color: Colors.white70,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 50),
              OutlinedButton(
                style: OutlinedButton.styleFrom(
                  backgroundColor: Colors.black87,
                  foregroundColor: Colors.greenAccent,
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                  side:
                      BorderSide(color: Colors.greenAccent.shade400, width: 2),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                onPressed: () {
                  // navigation functionality here
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Loginpage();
                  }));
                },
                child: Text(
                  "GET STARTED",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
