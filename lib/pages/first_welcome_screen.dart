import 'package:flutter/material.dart';
import 'package:study_mate_application/pages/second_welcome_screen.dart';
import 'package:study_mate_application/widgets/gradient_button.dart';

class FirstWelcomeScreen extends StatelessWidget {
  const FirstWelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(93, 109, 191, 0.92),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/study_mate_logo.png'),
            GradientButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return SecondWelcomeScreen();
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
