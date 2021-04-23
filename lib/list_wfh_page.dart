import 'package:flutter/material.dart';

class ListWFH extends StatefulWidget {
  @override
  _ListWFHState createState() => _ListWFHState();
}

class _ListWFHState extends State<ListWFH> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.adb_rounded),
          title: Text('List Karyawan WFH'),
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
            Center(
              child: new ListView(
                  shrinkWrap: true,
                  padding: const EdgeInsets.all(20.0),
                  children: <Widget>[
                    GenerateListWFH(
                        context, 'Ardi Dwi', 'Jakarta Barat, Indonesia'),
                    GenerateListWFH(
                        context, 'Puspa', 'Jakarta Barat, Indonesia'),
                    GenerateListWFH(
                        context, 'Handi Haryadi', 'Jakarta Barat, Indonesia'),
                    GenerateListWFH(
                        context, 'Row Suryo', 'Jakarta Barat, Indonesia'),
                    GenerateListWFH(
                        context, 'Udin Ganteng', 'Jakarta Barat, Indonesia'),
                  ]),
            ),
          ],
        ));
  }

  Center GenerateListWFH(BuildContext context, String name, String location) {
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
