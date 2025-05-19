import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:study_mate_application/pages/home_screen.dart';
import 'package:study_mate_application/widgets/navigation_item.dart';
import 'package:study_mate_application/pages/profile_screen.dart';
import 'package:study_mate_application/widgets/subject.dart';

class CourseScreen extends StatelessWidget {
  const CourseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(243, 243, 245, 1),
      appBar: AppBar(
        leading: Text(''),
        backgroundColor: Colors.white,
        title: Text('Kursus Matematika'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Image.asset('assets/kursus_matematika.png')],
            ),
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Kursus Online \nDalam Matematika',
                    style: GoogleFonts.prozaLibre(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                  Text(
                    'Tim kami sebagian mengambil tugas \nmatematika',
                    style: GoogleFonts.openSans(
                      color: Color.fromRGBO(154, 154, 154, 1),
                      fontSize: 17,
                    ),
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Image.asset('assets/suka.png'),
                      Text(
                        '785',
                        style: GoogleFonts.openSans(
                          color: Color.fromRGBO(70, 140, 231, 1),
                        ),
                      ),
                      SizedBox(width: 30),
                      Image.asset('assets/lightning.png'),
                      Text(
                        '1k+',
                        style: GoogleFonts.openSans(
                          color: Color.fromRGBO(154, 154, 154, 1),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 5),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Image.asset('assets/soal.png'),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '5 Contoh Soal',
                        style: GoogleFonts.openSans(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Contoh soal yaitu 5 yang \nsesuai dengan permintaan',
                        style: GoogleFonts.openSans(
                          color: Color.fromRGBO(95, 95, 95, 1),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
              margin: EdgeInsets.symmetric(horizontal: 30),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              child: Row(
                spacing: 20,
                children: [
                  Image.asset('assets/third_teacher.png'),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Firdaus Riski',
                        style: GoogleFonts.openSans(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Guru Matematika',
                        style: GoogleFonts.openSans(
                          color: Color.fromRGBO(95, 95, 95, 1),
                        ),
                      ),
                      Row(
                        children: [
                          Image.asset('assets/suka.png'),
                          Text(
                            '3219',
                            style: GoogleFonts.openSans(
                              color: Color.fromRGBO(70, 140, 231, 1),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        spacing: 15,
                        children: [
                          Subject(subjectsName: 'Matematika'),
                          Subject(subjectsName: 'Trigonomteri'),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Container(
          height: 70,
          padding: EdgeInsets.symmetric(horizontal: 20),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(25)),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              NavigationItem(
                imageUrl: 'assets/home.png',
                isOn: false,
                onClick: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return HomeScreen();
                      },
                    ),
                  );
                },
              ),
              NavigationItem(
                imageUrl: 'assets/university.png',
                isOn: true,
                onClick: () {},
              ),
              NavigationItem(
                imageUrl: 'assets/account.png',
                isOn: false,
                onClick: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return ProfileScreen();
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
