// ignore_for_file: unnecessary_import

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:torun/user_profile_card.dart';

class EmployeeListPage extends StatefulWidget {
  const EmployeeListPage({super.key});

  @override
  EmployeeListPageState createState() => EmployeeListPageState();
}

class EmployeeListPageState extends State {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFFDDF7E3),
        body: Column(children: [
          Padding(
            padding: const EdgeInsets.only(left: 33.0, top: 120.0),
            child: Row(
              children: [
                Expanded(
                  child: Text("", style: TextStyle(fontSize: 26)),
                ),
                SizedBox(width: 16),
                Padding(
                    padding: const EdgeInsets.only(right: 33.0),
                    child: Icon(Icons.settings, size: 60)),
              ],
            ),
          ),
          SizedBox(
            height: 100,
          ),
          UserProfileCard(
              name: "name", surname: "surname", address: "address", rating: 4, voteCount: 20,)
        ]));
  }
}
