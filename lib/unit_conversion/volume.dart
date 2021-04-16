import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Volume extends StatefulWidget {
  @override
  _VolumeState createState() => _VolumeState();
}

class _VolumeState extends State<Volume> {
  double mililiter = 0;
  double sentiliter = 0;
  double desiliter = 0;
  double liter = 1;
  double dekaliter = 0;
  double hektaliter = 0;
  double kiloliter = 0;
  TextEditingController etliter = new TextEditingController(text: "1");

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
                    controller: etliter,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      contentPadding:
                          const EdgeInsets.symmetric(horizontal: 20),
                      border: OutlineInputBorder(),
                      labelText: 'liter (l)',
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
                        liter = double.parse(etliter.text);
                        mililiter = liter * 1000;
                        sentiliter = liter * 100;
                        desiliter = liter * 10;
                        dekaliter = liter * 0.1;
                        hektaliter = liter * 0.01;
                        kiloliter = liter * 0.001;
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
                      child: Text(mililiter.toString()),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      child: Text("Mililiter (ml)"),
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Container(
                      child: Text(sentiliter.toString()),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      child: Text("Sentiliter (cl)"),
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
                      child: Text(desiliter.toString()),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      child: Text("Desiliter (dl)"),
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Container(
                      child: Text(dekaliter.toString()),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      child: Text("Dekaliter (dal)"),
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
                      child: Text(hektaliter.toString()),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      child: Text("Hektaliter (hl)"),
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Container(
                      child: Text(kiloliter.toString()),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      child: Text("Kiloliter (kl)"),
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
