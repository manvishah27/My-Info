import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class InfoBox extends StatelessWidget {
  final String text1;
  final IconData icon;

  InfoBox(this.text1, this.icon);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        height: 70,
        width: 380,
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
            Container(
              height: 60,
              width: 60,
              margin: EdgeInsets.only(left: 10),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
              ),
              child: RawMaterialButton(
                fillColor: Color(0xff000000),
                shape: CircleBorder(),
                onPressed: () {},
                child: Icon(
                  icon,
                  color: Color(0xffea2893),
                  size: 30,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              height: 50,
              width: 290,
              margin: EdgeInsets.all(10),
              child: Text(
                text1,
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}