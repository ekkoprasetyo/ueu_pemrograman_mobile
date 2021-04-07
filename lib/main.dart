import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Tugas 2 - Pemrograman Mobile")),
        body: Column(children: <Widget>[
          Center(
            child: Text(
              'Selamat Datang Di Universitas Esa Unggul',
              style: (TextStyle(color: Colors.lightBlue)),
            ),
          ),
          Center(
            child: Text(
              'Program Studi Teknik Informatika - Fakultas Ilmu Komputer',
              style: (TextStyle(color: Colors.lightBlue)),
            ),
          ),
          Container(
            padding: EdgeInsets.all(20.0),
            child: Image.asset(
              'assets/dunski.jpg',
              width: 100.0,
            ),
          ),
          Center(
            child: Text(
              'Nama : Eko Prasetyo',
              style: (TextStyle(color: Colors.lightBlue)),
            ),
          ),
          Center(
            child: Text(
              'NIP : 20180801185',
              style: (TextStyle(color: Colors.lightBlue)),
            ),
          ),
          Center(
            child: Text(
              'Hobby : Bermain Game',
              style: (TextStyle(color: Colors.lightBlue)),
            ),
          ),
          Center(
            child: Text(
              'Pekerjaan : Network Engineer',
              style: (TextStyle(color: Colors.lightBlue)),
            ),
          ),
          Center(
            child: Text(
              'Status : Undercover',
              style: (TextStyle(color: Colors.lightBlue)),
            ),
          ),
        ]),
      ),
    );
  }
}
