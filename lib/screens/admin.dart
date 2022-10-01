import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class admin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[900],
        title: Text('ผู้พัฒนาระบบ'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 50,
            ),
            Text("ผู้พัฒนาระบบ",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold)),
            //คนที่1
            _profilePic1(),
            Padding(
              padding: const EdgeInsets.fromLTRB(8.0, 5.0, 8.0, 4.0),
              child: Text("1.นายภควัต นาเจิมพลอย",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 23.0,
                      fontWeight: FontWeight.bold)),
            ),
            Text("62011211064",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold)),
            Text("..................................",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18.0,
                )),
          ],
        ),
      ),
    );
  }

  Container _profilePic1() => Container(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(50.0, 30.0, 50.0, 15.0),
          child: Stack(
            alignment: Alignment(0.9, 0.9),
            children: <Widget>[
              CircleAvatar(
                backgroundImage: AssetImage("assets/images/1.png"),
                radius: 150.0,
              ),
            ],
          ),
        ),
      );
}
