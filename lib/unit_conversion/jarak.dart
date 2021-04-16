import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Jarak extends StatefulWidget {
  @override
  _JarakState createState() => _JarakState();
}

class _JarakState extends State<Jarak> {
  double milimeter = 0;
  double sentimeter = 0;
  double desimeter = 0;
  double meter = 1;
  double dekameter = 0;
  double hektameter = 0;
  double kilometer = 0;
  TextEditingController etmeter = new TextEditingController(text: "1");

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Flexible(
                  child: TextField(
                    controller: etmeter,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      contentPadding:
                          const EdgeInsets.symmetric(horizontal: 20),
                      border: OutlineInputBorder(),
                      labelText: 'meter (m)',
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                RaisedButton(
                    child: Text('Convert'),
                    onPressed: () {
                      setState(() {
                        meter = double.parse(etmeter.text);
                        milimeter = meter * 1000;
                        sentimeter = meter * 100;
                        desimeter = meter * 10;
                        dekameter = meter * 0.1;
                        hektameter = meter * 0.01;
                        kilometer = meter * 0.001;
                      });
                    }),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Container(
                      child: Text(milimeter.toString()),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      child: Text("Milimeter (mm)"),
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Container(
                      child: Text(sentimeter.toString()),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      child: Text("Sentimeter (cm)"),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Container(
                      child: Text(desimeter.toString()),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      child: Text("Desimeter (dm)"),
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Container(
                      child: Text(dekameter.toString()),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      child: Text("Dekameter (dam)"),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Container(
                      child: Text(hektameter.toString()),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      child: Text("Hektameter (hm)"),
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Container(
                      child: Text(kilometer.toString()),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      child: Text("Kilometer (km)"),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 10),
          ],
        ));
  }
}
