import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'SecondRoute.dart';

BoxDecoration titleDecoration = BoxDecoration(
    border: Border(
        bottom: BorderSide(
          color: Colors.white,
          style: BorderStyle.solid,
        )
    )
);

void main() {
  runApp(
      MyApp()
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeRoute(),
    );
  }
}

class HomeRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: Color(0xffea2893),
        icon: Icon(Icons.call),
        label: Text('Contact Me'),
        onPressed: () {
          Navigator.push(context, new MaterialPageRoute(builder: (context) => SecondRoute()),);
        }
      ),
      backgroundColor: Colors.black,
      body: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Align(
            alignment: Alignment.topCenter,
            child: Container(
//              height: 200,
              width: double.infinity,
              margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Color(0xfff4624a), Color(0xffea2893)],
                  ),
                  borderRadius: BorderRadius.circular(20)
              ),
              child: Stack(
                children: <Widget>[
                  Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      width: double.infinity,
                      height: 150,
                      margin: EdgeInsets.only(top:50),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      height: 100,
                      width: 100,
                      margin: EdgeInsets.only(left: 15),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage('images/download.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 70, 20, 0),
                          child: Text(
                            'Manvi Shah',
                            style: TextStyle(
                              fontFamily: "Sans",
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Container(
                            margin: EdgeInsets.fromLTRB(0, 15, 20, 0),
                            child: Text(
                              'CS Undergrad',
                              style: TextStyle(
                                fontFamily: "Sans",
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              height: 200,
              width: double.infinity,
              margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Color(0xffea2893), Color(0xff9700b2)],
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
                        'About Me:',
                        style: TextStyle(
                          fontFamily: "Sans",
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      alignment: Alignment.center,
                      width: double.infinity,
                      height: 140,
                      margin: EdgeInsets.only(top: 10),
                      child: Text(
                        'Hi there! This is supposed to be my Bio.',
                        style: TextStyle(
                          fontFamily: "Sans",
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}