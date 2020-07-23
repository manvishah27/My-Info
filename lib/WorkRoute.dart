import 'package:flutter/material.dart';
import 'main.dart';
import 'WorkBox.dart';
import 'ProjectsRoute.dart';

class WorkRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff9700b2),
        title: Text(
          'My Info',
        ),
      ),
      backgroundColor: Colors.black,
      floatingActionButton: FloatingActionButton.extended(
          backgroundColor: Color(0xff9700b2),
          icon: Icon(Icons.group_work),
          label: Text('Projects'),
          onPressed: () {
            Navigator.push(context, new MaterialPageRoute(builder: (context) => ProjectsRoute()),);
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
                    'Work Experience:',
                    style: TextStyle(
                      fontFamily: "Sans",
                      fontWeight: FontWeight.w600,
                      fontSize: 25,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              WorkBox("Web Developer" , "RiiDL, Somaiya Vidyavihar", "(March 20 - June 20)"),
              WorkBox("Front-End Web Developer" , "SDC, KJSCE", "(January 19 - October 19)"),
            ],
          ),
        ),
      ),
    );
  }
}
