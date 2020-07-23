import 'package:flutter/material.dart';

class EduBox extends StatelessWidget {
  final String college;
  final String course;
  final String score;

  EduBox(this.college, this.course, this.score);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        height: 100,
        width: 380,
        margin: EdgeInsets.only(left: 10),
        padding: EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              college,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
            ),
            Text(
              course,
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 18,
                color: Colors.white,
              ),
            ),
            Text(
              score,
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 15,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}