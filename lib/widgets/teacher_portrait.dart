import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TeacherPortrait extends StatelessWidget {
  final String imageUrl;
  final String teachersName;
  final String subjectName;
  final String countOfLikes;

  const TeacherPortrait({
    super.key,
    required this.imageUrl,
    required this.teachersName,
    required this.subjectName,
    required this.countOfLikes,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        children: [
          Image.asset(imageUrl, width: 90, height: 90),
          SizedBox(height: 15),
          Text(
            teachersName,
            style: GoogleFonts.openSans(fontWeight: FontWeight.bold),
          ),
          Text(subjectName),
          SizedBox(height: 15),
          Row(
            children: [
              Image.asset('assets/suka.png'),
              Text(
                countOfLikes,
                style: GoogleFonts.openSans(
                  color: Color.fromRGBO(70, 140, 231, 1),
                ),
              ),
              SizedBox(width: 25),
              Image.asset('assets/bookmark.png'),
            ],
          ),
        ],
      ),
    );
  }
}
