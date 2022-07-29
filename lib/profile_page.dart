import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  TextEditingController edditNickName = TextEditingController();
  TextEditingController edditUsername = TextEditingController();
  TextEditingController edditBirthDate = TextEditingController();
  TextEditingController edditHoby = TextEditingController();

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
      title: Text("Edit Page"),
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
                  "",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 60),
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: textFiled(edditNickName, "Edit Nama lengkap"),
                ),
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: textFiled(edditUsername, "Edit Nama Panggilan"),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        List<String> string = [];
                        string.add(edditNickName.text);
                        string.add(edditUsername.text);
                        Navigator.of(context).pop(string);
                      });
                    },
                    child: Text("OK")),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
