import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String message = "This Is The First Text"; //text that we are gonna replace with another function

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Anonymous Method"),backgroundColor: Colors.red,//the title of the app
        ), //anonymous method = method doesnt have a name (if we only need to use it only once )
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,//using this to set the Axis Alignment to center
            children: <Widget>[ //using array so we can input more than 1 Widget
              Text(message), //calling messasge String
              RaisedButton(
                child: Text("Press Me"),color: Colors.green, shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0)),//Text Inside the button, next the color, and after that is how to make oval button
                onPressed: () {
                  //this is how to call anonymous method using () and following with {} and inside it you can put your program
                  setState(() {
                    //setState using Anonymous method too if you can recognize it (() {});
                    //so the pressed button gonna be updated
                    message = "Button Has Been Pressed"; //this is the message that gonna replace the first one, we put it here because this is inside the onPressed function
                  });
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
