import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Waktu extends StatefulWidget {
  @override
  _WaktuState createState() => _WaktuState();
}

class _WaktuState extends State<Waktu> {
  double milidetik = 0;
  double sentidetik = 0;
  double desidetik = 0;
  double detik = 1;
  double dekadetik = 0;
  double hektadetik = 0;
  double kilodetik = 0;
  double menit = 0;
  double jam = 0;
  TextEditingController etdetik = new TextEditingController(text: "1");

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
                    controller: etdetik,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      contentPadding:
                          const EdgeInsets.symmetric(horizontal: 20),
                      border: OutlineInputBorder(),
                      labelText: 'detik (d)',
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
                        detik = double.parse(etdetik.text);
                        milidetik = detik * 1000;
                        sentidetik = detik * 100;
                        desidetik = detik * 10;
                        dekadetik = detik * 0.1;
                        hektadetik = detik * 0.01;
                        kilodetik = detik * 0.001;
                        menit = detik / 60;
                        jam = detik / 3600;
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
                      child: Text(milidetik.toString()),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      child: Text("Milidetik (md)"),
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Container(
                      child: Text(sentidetik.toString()),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      child: Text("Sentidetik (cd)"),
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
                      child: Text(desidetik.toString()),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      child: Text("Desidetik (dd)"),
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Container(
                      child: Text(dekadetik.toString()),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      child: Text("Dekadetik (dad)"),
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
                      child: Text(hektadetik.toString()),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      child: Text("Hektadetik (hd)"),
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Container(
                      child: Text(kilodetik.toString()),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      child: Text("Kilodetik (kd)"),
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
                      child: Text(menit.toString()),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      child: Text("Menit"),
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Container(
                      child: Text(jam.toString()),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      child: Text("Jam"),
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
