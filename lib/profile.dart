import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  final String name;
  final String nim;
  final String location;

  Profile({@required this.name, @required this.nim, @required this.location});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: 80.0,
      width: 300.0,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('Name : ' + name),
          Text('NIM : ' + nim),
          Divider(),
          Text(
            'Location : ' + location,
            style: TextStyle(
              fontWeight: FontWeight.w700,
            ),
          )
        ],
      ),
    );
  }
}
