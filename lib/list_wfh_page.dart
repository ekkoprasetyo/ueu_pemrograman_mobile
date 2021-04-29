import 'package:flutter/material.dart';
import 'package:tugas2_pm/login_page.dart';

class ListWFH extends StatefulWidget {
  @override
  _ListWFHState createState() => _ListWFHState();
}

class _ListWFHState extends State<ListWFH> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('List Absensi Karyawan'),
          flexibleSpace: Container(
              decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.orangeAccent, Colors.blueAccent],
                begin: FractionalOffset.topLeft,
                end: FractionalOffset.bottomRight),
          )),
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.logout),
              tooltip: 'Logout',
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => LoginPage(),
                  ),
                  (route) => false,
                );
              },
            ),
          ],
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
            Center(
              child: new ListView(
                  shrinkWrap: true,
                  padding: const EdgeInsets.all(20.0),
                  children: <Widget>[
                    generateWFHList(
                        context, 'Ardi Dwi', 'Jakarta Barat, Indonesia'),
                    generateWFHList(
                        context, 'Puspa', 'Jakarta Barat, Indonesia'),
                    generateWFHList(
                        context, 'Handi Haryadi', 'Jakarta Barat, Indonesia'),
                    generateWFHList(
                        context, 'Row Suryo', 'Jakarta Barat, Indonesia'),
                    generateWFHList(
                        context, 'Udin Ganteng', 'Jakarta Barat, Indonesia'),
                  ]),
            ),
          ],
        ));
  }

  Center generateWFHList(BuildContext context, String name, String location) {
    return Center(
        child: SizedBox(
      width: MediaQuery.of(context).size.width * 0.9,
      height: 160,
      child: Card(
        child: Stack(
          children: <Widget>[
            Opacity(
              opacity: 0.7,
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    image: DecorationImage(
                        image: NetworkImage(
                            'https://www.toptal.com/designers/subtlepatterns/patterns/memphis-mini.png'),
                        fit: BoxFit.cover)),
              ),
            ),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                      width: 75,
                      height: 75,
                      child: Image(image: AssetImage('assets/person.png'))),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        name,
                        style: TextStyle(fontSize: 20, color: Colors.blue),
                      ),
                      Text(location),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
