import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Massa extends StatefulWidget {
  @override
  _MassaState createState() => _MassaState();
}

class _MassaState extends State<Massa> {
  double miligram = 0;
  double sentigram = 0;
  double desigram = 0;
  double gram = 1;
  double dekagram = 0;
  double hektagram = 0;
  double kilogram = 0;
  TextEditingController etGram = new TextEditingController(text: "1");

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
                    controller: etGram,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      contentPadding:
                          const EdgeInsets.symmetric(horizontal: 20),
                      border: OutlineInputBorder(),
                      labelText: 'Gram (g)',
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
                        gram = double.parse(etGram.text);
                        miligram = gram * 1000;
                        sentigram = gram * 100;
                        desigram = gram * 10;
                        dekagram = gram * 0.1;
                        hektagram = gram * 0.01;
                        kilogram = gram * 0.001;
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
                      child: Text(miligram.toString()),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      child: Text("Miligram (mg)"),
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Container(
                      child: Text(sentigram.toString()),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      child: Text("Sentigram (cg)"),
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
                      child: Text(desigram.toString()),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      child: Text("Desigram (dg)"),
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Container(
                      child: Text(dekagram.toString()),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      child: Text("Dekagram (dag)"),
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
                      child: Text(hektagram.toString()),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      child: Text("Hektagram (hg)"),
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Container(
                      child: Text(kilogram.toString()),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      child: Text("Kilogram (kg)"),
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
