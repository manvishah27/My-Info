import 'package:flutter/material.dart';
import 'package:my_flutter_app/EduBox.dart';
import 'main.dart';
import 'EduBox.dart';
import 'WorkRoute.dart';

class EducationRoute extends StatelessWidget {
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
          icon: Icon(Icons.work),
          label: Text('Work Experience'),
          onPressed: () {
            Navigator.push(context, new MaterialPageRoute(builder: (context) => WorkRoute()),);
          }
      ),
      body: Align(
        alignment: Alignment.center,
        child: Container(
          height: 350,
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
                    'Eductaion:',
                    style: TextStyle(
                      fontFamily: "Sans",
                      fontWeight: FontWeight.w600,
                      fontSize: 25,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              EduBox("K J Somaiya College of Engineering" , "BTech Computer Engineering" , "CGPA - 8.73"),
              EduBox("K J Somaiya College of Science and Commerce" , "Higher Secondary Certificate" , "Percentage - 88.3%"),
              EduBox("DAV Public School" , "10th CBSE" , "CGPA - 9.1"),
            ],
          ),
        ),
      ),
    );
  }
}
