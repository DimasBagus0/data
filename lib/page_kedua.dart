import 'package:data/main.dart';
import 'package:data/profile_page.dart';
import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  String nick, usn, birthDate, hobby;

  SecondPage(
      {Key? key,
      required this.nick,
      required this.usn,
      required this.birthDate,
      required this.hobby})
      : super(key: key);

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  // final String? nick, usn, addreS, hobby;
  //
  //
  // _SecondPageState(this.nick, this.usn, this.addreS, this.hobby);

  Widget btnFunction(String text) {
    return ElevatedButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => FirstPage()));
        },
        child: Text(text));
  }

  @override
  Widget build(BuildContext context) {
    AppBar myAppbar = AppBar(
      title: Text("Page Kedua"),
    );
    return Scaffold(
      appBar: myAppbar,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 10),
                  child: Text("Nama Lengkap : " + widget.nick),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 10),
                  child: Text("Nama Panggilan :" + widget.usn),
                ),
              ],
            ),
            ElevatedButton(
                onPressed: () async {
                  final newValue = await Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ProfilePage()));

                  setState(() {
                    widget.nick = newValue[0];
                    widget.usn = newValue[1];
                  });
                },
                child: Text("Edit Nama"))
          ],
        ),
      ),
    );
  }
}
