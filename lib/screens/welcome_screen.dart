import 'package:flutter/material.dart';
import 'package:practice_flutter/custom_shapes/button_clipper.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Center(
              child: Image.asset(
                fit: BoxFit.contain,
                "assets/images/welcome.avif",
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Column(
                children: [
                  Text(
                    "Tasks management and To-Do List",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "A to-do task list app is a digital tool for organizing and tracking tasks to increase productivity, manage time effectively,",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                      color: Colors.black54,
                    ),
                  ),
                  SizedBox(height: 15),
                  ClipPath(
                    clipper: ButtonClipper(),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, "/home");
                      },
                      child: Row(
                        children: [
                          Expanded(
                            flex: 6,
                            child: Text(
                              textAlign: TextAlign.center,
                              "Let's Start",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 17,
                              ),
                            ),
                          ),
                          Expanded(
                            child: Icon(
                              Icons.arrow_forward,
                              fontWeight: FontWeight.bold,
                              size: 17,
                            ),
                          ),
                        ],
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
