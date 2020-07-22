import 'package:flutter/material.dart';
import 'InfoBox.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'main.dart';

class SecondRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: Color(0xffea2893),
        icon: Icon(Icons.account_circle),
        label: Text('Info'),
        onPressed: () {
          Navigator.pop(context);
        }
      ),
      body: Align(
        alignment: Alignment.center,
        child: Container(
          height: 250,
          width: double.infinity,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Color(0xff9700b2) , Color(0xff4f2ac4)]
              ),
              borderRadius: BorderRadius.circular(20)
          ),
          child: Column(
            children: <Widget>[
              Align(
                alignment: Alignment.topCenter,
                child: Container(
                  alignment: Alignment.center,
                  width: double.infinity,
                  height: 30,
                  decoration: titleDecoration,
                  margin: EdgeInsets.only(top:10, left: 10, right: 10),
                  child: Text(
                    'Contact Me:',
                    style: TextStyle(
                      fontFamily: "Sans",
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              InfoBox("8898273995" , Icons.phone),
              InfoBox("manvishah027@gmail.com" , Icons.email),
              InfoBox("manvishah27" , FontAwesomeIcons.github)
            ],
          ),
        ),
      ),
    );
  }
}
