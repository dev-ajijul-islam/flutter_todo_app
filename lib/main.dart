import 'package:flutter/material.dart';
import 'package:practice_flutter/screens/home_screen.dart';
import 'package:practice_flutter/screens/welcome_screen.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/welcome",
      routes: {
        "/home": (context) => HomeScreen(),
        "/welcome": (context) => WelcomeScreen(),
      },

      theme: ThemeData(
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.deepPurple,
            foregroundColor: Colors.white,
            minimumSize: Size(120, 50),
            shape: RoundedSuperellipseBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
        ),
        primaryColor: Colors.deepPurple,

        textTheme: TextTheme(
          bodyLarge: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),
          bodyMedium:  TextStyle(fontSize: 20)
        )
      ),
      home: WelcomeScreen(),
    );
  }
}
