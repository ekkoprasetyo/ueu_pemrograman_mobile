import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Area extends StatefulWidget {
  @override
  _AreaState createState() => _AreaState();
}

class _AreaState extends State<Area> {
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
                      labelText: 'meter2 (l2)',
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
                      child: Text("Milimeter2 (ml2)"),
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
                      child: Text("Sentimeter2 (cl2)"),
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
                      child: Text("Desimeter2 (dl2)"),
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
                      child: Text("Dekameter2 (dal2)"),
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
                      child: Text("Hektameter2 (hl2)"),
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
                      child: Text("Kilometer2 (kl2)"),
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
