import 'package:data/page_kedua.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Home());
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(brightness: Brightness.light),
      home: FirstPage(),
    );
  }
}

class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  TextEditingController inptNickName = TextEditingController();
  TextEditingController inptUserName = TextEditingController();
  TextEditingController inptBirthDate = TextEditingController();
  TextEditingController inptHobby = TextEditingController();

  Widget textFiled(TextEditingController controller, String text) {
    return TextField(
      controller: controller,
      decoration:
          InputDecoration(border: OutlineInputBorder(), labelText: text),
    );
  }

  @override
  Widget build(BuildContext context) {
    AppBar myAppbar = AppBar(
      title: Text("Username"),
    );
    return Scaffold(
      appBar: myAppbar,
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(top: 30),
                child: Text(
                  "Masuk",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 60),
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: textFiled(inptNickName, "Nama Lengkap"),
                ),
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: textFiled(inptUserName, "Nama Panggilan"),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SecondPage(
                                    nick: inptNickName.text,
                                    usn: inptUserName.text,
                                    birthDate: inptBirthDate.text,
                                    hobby: inptHobby.text,
                                  )));
                    },
                    child: Text("Masuk")),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
