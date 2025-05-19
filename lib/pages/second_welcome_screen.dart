import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:study_mate_application/pages/third_welcome_screen.dart';
import 'package:study_mate_application/widgets/gradient_button.dart';

class SecondWelcomeScreen extends StatelessWidget {
  const SecondWelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(93, 109, 191, 0.92),
      body: Center(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 250),
                child: Text(
                  'Study Mate',
                  style: GoogleFonts.passeroOne(
                    color: Color.fromRGBO(249, 178, 8, 1),
                    fontSize: 64,
                  ),
                ),
              ),
              SizedBox(height: 250),
              Text(
                'Selamat Datang',
                textAlign: TextAlign.center,
                style: GoogleFonts.openSans(
                  color: Colors.white,
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 60),
                child: Text(
                  'Saat kau terpuruk, \n percayalah \n bahwa ilmu yang sudah \n dipelajari akan berarti \n kemudian hari.',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.openSans(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                spacing: 40,
                children: [
                  Container(
                    width: 10,
                    height: 10,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                    ),
                  ),
                  Container(
                    width: 5,
                    height: 5,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                    ),
                  ),
                  Container(
                    width: 5,
                    height: 5,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              GradientButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return ThirdWelcomeScreen();
                      },
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
