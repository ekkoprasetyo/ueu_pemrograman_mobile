import 'package:flutter/material.dart';
import 'package:tugas2_pm/list_wfh_page.dart';

class MainPageLBS extends StatefulWidget {
  @override
  _MainPageLBSState createState() => _MainPageLBSState();
}

class _MainPageLBSState extends State<MainPageLBS> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.adb_rounded),
          title: Text('Absensi WFH'),
          flexibleSpace: Container(
              decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.orangeAccent, Colors.blueAccent],
                begin: FractionalOffset.topLeft,
                end: FractionalOffset.bottomRight),
          )),
          actions: [Icon(Icons.logout)],
        ),
        body: Stack(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Colors.white10, Colors.blue.shade100],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter)),
            ),
            Container(
              margin: EdgeInsets.all(20.0),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            Text('Selamat Datang Eko Prasetyo ..'),
                            Text(
                              'Silahkan melakukan absensi ..',
                              style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  color: Colors.blue),
                            ),
                          ],
                        ),
                        Container(
                            width: 100,
                            height: 100,
                            child:
                                Image(image: AssetImage('assets/dunski.jpg'))),
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(
                          Icons.gps_fixed,
                          color: Colors.redAccent,
                        ),
                        Column(
                          children: [
                            Text('Posisi anda saat ini :'),
                            Text(
                              'Jl. Arjuna, Jakarta Barat, Indonesia',
                              style: TextStyle(color: Colors.redAccent),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        RaisedButton(
                          child: Text(
                            'Masuk',
                            style: TextStyle(color: Colors.white),
                          ),
                          onPressed: () {},
                          color: Colors.green,
                        ),
                        RaisedButton(
                          child: Text('Pulang'),
                          onPressed: () {},
                          color: Colors.amber,
                        ),
                      ],
                    ),
                    RaisedButton(
                      child: Text(
                        'Lihat Absensi WFH Karyawan',
                        style: TextStyle(color: Colors.white),
                      ),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return ListWFH();
                        }));
                      },
                      color: Colors.blueAccent,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
