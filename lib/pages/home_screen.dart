import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:study_mate_application/pages/course_screen.dart';
import 'package:study_mate_application/pages/profile_screen.dart';
import 'package:study_mate_application/widgets/category.dart';
import 'package:study_mate_application/widgets/navigation_item.dart';
import 'package:study_mate_application/widgets/teacher_portrait.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;
  List<Widget> pages = [HomeScreen(), CourseScreen(), ProfileScreen()];

  var categories = [
    ['assets/categories/kimia.png', 'Kimia'],
    ['assets/categories/matematika.png', 'Matematika'],
    ['assets/categories/fisika.png', 'Fisika'],
    ['assets/categories/bahasa.png', 'Bahasa Inggris'],
  ];

  var teachers = [
    ['assets/first_teacher.png', 'Anindita Rahman', 'Guru Bahasa Inggris'],
    ['assets/second_teacher.png', 'Muhammad', 'Guru Fisika'],
    ['assets/third_teacher.png', 'Riski Firdaus', 'Guru Matematika'],
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(243, 243, 245, 1),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(243, 243, 245, 1),
        leading: Container(
          margin: EdgeInsets.only(left: 20),
          child: SvgPicture.asset(
            'assets/Category.svg',
            fit: BoxFit.scaleDown,
            width: 5,
            height: 5,
          ),
        ),
        title: Text(
          '👋 Hello Kathrina',
          style: GoogleFonts.openSans(fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
        actions: [
          Container(
            margin: EdgeInsets.only(right: 20),
            child: Image.asset('assets/profile.png'),
          ),
        ],
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 40),
            Image.asset('assets/main_image.png'),
            SizedBox(height: 30),
            Container(
              width: MediaQuery.sizeOf(context).width,
              height: 50,
              margin: EdgeInsets.symmetric(horizontal: 40),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  spacing: 20,
                  children: [
                    Category(
                      imageUrl: categories[0][0],
                      title: categories[0][1],
                    ),
                    Category(
                      imageUrl: categories[1][0],
                      title: categories[1][1],
                    ),
                    Category(
                      imageUrl: categories[2][0],
                      title: categories[2][1],
                    ),
                    Category(
                      imageUrl: categories[3][0],
                      title: categories[3][1],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 30),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                spacing: 15,
                children: [
                  Container(
                    width: 3,
                    height: 25,
                    color: Color.fromRGBO(70, 140, 231, 1),
                  ),
                  Text(
                    'Rekomendasi Guru',
                    style: GoogleFonts.openSans(fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            Container(
              width: MediaQuery.sizeOf(context).width,
              height: 220,
              margin: EdgeInsets.symmetric(horizontal: 40),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  spacing: 10,
                  children: [
                    TeacherPortrait(
                      imageUrl: teachers[0][0],
                      teachersName: teachers[0][1],
                      subjectName: teachers[0][2],
                      countOfLikes: '1581',
                    ),
                    TeacherPortrait(
                      imageUrl: teachers[1][0],
                      teachersName: teachers[1][1],
                      subjectName: teachers[1][2],
                      countOfLikes: '3219',
                    ),
                    TeacherPortrait(
                      imageUrl: teachers[2][0],
                      teachersName: teachers[2][1],
                      subjectName: teachers[2][2],
                      countOfLikes: '899',
                    ),
                  ],
                ),
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
              NavigationItem(imageUrl: 'assets/home.png', isOn: true),
              NavigationItem(imageUrl: 'assets/university.png', isOn: false),
              NavigationItem(imageUrl: 'assets/account.png', isOn: false),
            ],
          ),
        ),
      ),
    );
  }
}
