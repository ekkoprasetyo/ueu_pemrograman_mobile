import 'package:flutter/material.dart';
import 'package:tugas2_pm/main_page_lbs.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController txt_username = TextEditingController(text: "Username");
  TextEditingController txt_password = TextEditingController(text: "Password");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.adb_rounded),
        title: Text('Monitoring WFH LBS'),
        flexibleSpace: Container(
            decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [Colors.orangeAccent, Colors.blueAccent],
              begin: FractionalOffset.topLeft,
              end: FractionalOffset.bottomRight),
        )
            // image: DecorationImage(
            //     image: AssetImage('assets/pattern.png'),
            //     fit: BoxFit.none,
            //     repeat: ImageRepeat.repeat)),
            ),
      ),
      body: Container(
        margin: EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Container(
                width: 200,
                height: 200,
                child: Image(
                  image: AssetImage('assets/gps.jpeg'),
                ),
              ),
              TextField(
                controller: txt_username,
              ),
              TextField(
                controller: txt_password,
              ),
              RaisedButton(
                child: Text('Login'),
                onPressed: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) {
                    return MainPageLBS();
                  }));
                },
                color: Colors.amber,
              )
            ],
          ),
        ),
      ),
    );
  }
}
