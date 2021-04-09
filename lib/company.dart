import 'package:flutter/material.dart';

class Company extends StatelessWidget {
  final String company;
  final String location;

  Company({@required this.company, @required this.location});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                width: 75.0,
                height: 75.0,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(40.0),
                ),
                child: Image.asset(
                  'assets/railink.png',
                  width: 50.0,
                ),
              ),
              SizedBox(
                width: 30.0,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    company + ', ' + location,
                    style: TextStyle(
                      fontWeight: FontWeight.w800,
                    ),
                  )
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
