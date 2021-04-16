import 'package:flutter/material.dart';
import 'package:tugas2_pm/area.dart';
import 'package:tugas2_pm/unit_conversion/jarak.dart';
import 'package:tugas2_pm/unit_conversion/massa.dart';
import 'package:tugas2_pm/profile.dart';
import 'package:tugas2_pm/unit_conversion/uang.dart';
import 'package:tugas2_pm/unit_conversion/volume.dart';
import 'package:tugas2_pm/unit_conversion/waktu.dart';

class DropDown extends StatefulWidget {
  @override
  _DropDownState createState() => _DropDownState();
}

class _DropDownState extends State<DropDown> {
  String _chosenValue;

  renderWidget() {
    if (_chosenValue == 'Massa') {
      return Massa();
    } else if (_chosenValue == 'Jarak') {
      return Jarak();
    } else if (_chosenValue == 'Uang') {
      return Uang();
    } else if (_chosenValue == 'Area') {
      return Area();
    } else if (_chosenValue == 'Volume') {
      return Volume();
    } else if (_chosenValue == 'Waktu') {
      return Waktu();
    } else {
      return Text('Belum ada pilihan');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Unit Conversion'),
        ),
        body: Center(
            child: ListView(
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.all(10),
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
                    Profile(
                      name: 'Eko Prasetyo',
                      nim: '20180801185',
                      location: 'Esa Unggul',
                    ),
                  ],
                ),
                Container(
                  padding: const EdgeInsets.all(20),
                  child: DropdownButton<String>(
                    value: _chosenValue,
                    style: TextStyle(color: Colors.black),
                    items: <String>[
                      'Massa',
                      'Jarak',
                      'Uang',
                      'Area',
                      'Volume',
                      'Waktu',
                    ].map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    hint: Text(
                      "Pilih Konversi Unit",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w600),
                    ),
                    onChanged: (String value) {
                      setState(() {
                        _chosenValue = value;
                      });
                    },
                  ),
                ),
                renderWidget(),
              ],
            ),
          ],
        )));
  }
}
