import 'package:flutter/material.dart';
import 'package:tugas2_pm/collage.dart';
import 'package:tugas2_pm/company.dart';
import 'package:tugas2_pm/profile.dart';

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                width: 150.0,
                height: 150.0,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Image.asset(
                  'assets/dunski.jpg',
                  width: 100.0,
                ),
              ),
              SizedBox(
                width: 30.0,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[Text("Don't stop playing ..")],
              )
            ],
          ),
          Profile(
            location: 'Jakarta',
            nim: '20180801185',
            name: 'Eko Prasetyo',
          ),
          Company(
            company: 'PT. Railink',
            location: 'Jakarta',
          ),
          Collage(
            collage: 'Esa Unggul University',
            location: 'Jakarta',
          )
        ],
      ),
    );
  }
}
