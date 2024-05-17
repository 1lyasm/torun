// ignore_for_file: unnecessary_import

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  SettingsPageState createState() => SettingsPageState();
}

class SettingsPageState extends State {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFDDF7E3),
      body: Column(
        children: [
          SizedBox(height: 50),
          Row(
            children: [
              SizedBox(
                width: 50,
              ),
              IconButton(
                  onPressed: null,
                  icon: Icon(
                    Icons.arrow_back_ios,
                    color: Colors.black.withOpacity(1),
                  ),
                  iconSize: 60)
            ],
          ),
          Icon(
            Icons.account_circle_rounded,
            size: 220,
            color: Colors.grey.withOpacity(0.5),
          ),
          SizedBox(height: 80),
          Text(
            "Simanur Hattapoğlu",
            style:
                TextStyle(fontSize: 45, color: Color.fromRGBO(8, 102, 52, 1)),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
              width: 350,
              child: Divider(
                color: Color.fromRGBO(167, 201, 87, 1),
                thickness: 12,
              )),
          SizedBox(
            height: 50,
          ),
          SizedBox(
            width: 200,
            height: 100,
            child: Column(children: [
              Row(children: [Text("Doğum Tarihi", style: TextStyle(fontSize: 20),)]),
              Row(children: [Text("Numara", style: TextStyle(fontSize: 20),)]),
              Row(children: [Text("E-posta", style: TextStyle(fontSize: 20),)]),
              Row(children: [Text("Adres", style: TextStyle(fontSize: 20),)]),
            ]),
          ),
          Text("Geçmiş Işlerim"),
          Text("Privacy Policy"),
          Text("Hakkımızda")
        ],
      ),
    );
  }
}
