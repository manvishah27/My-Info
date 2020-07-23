import 'package:flutter/material.dart';
import 'main.dart';
import 'ContactRoute.dart';
import 'package:my_flutter_app/ProjBox.dart';

class ProjectsRoute extends StatelessWidget {
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
          icon: Icon(Icons.call),
          label: Text('Contact Me'),
          onPressed: () {
            Navigator.push(context, new MaterialPageRoute(builder: (context) => ContactRoute()),);
          }
      ),
      body: Align(
        alignment: Alignment.center,
        child: Container(
          height: 200,
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
                    'Projects:',
                    style: TextStyle(
                      fontFamily: "Sans",
                      fontWeight: FontWeight.w600,
                      fontSize: 25,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              ProjBox("Tourist System" , "August 2020"),
              ProjBox("Parallax Restaurant" , "November 2019"),
            ],
          ),
        ),
      ),
    );
  }
}
