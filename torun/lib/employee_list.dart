// ignore_for_file: unnecessary_import, unused_import

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:torun/expanded_user_profile_card.dart';
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
      appBar: AppBar(
        toolbarHeight: 150,
        title: Image.asset(
          "assets/logo.png",
          width: 141,
          height: 199,
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.settings,
              size: 50,
            ),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (page) => const Placeholder()));
            },
          ),
        ],
      ),
      body: ListView(
        children:  const [
          ExpandedUserProfileCard(
            name: "Elif",
            surname: "Kaya",
            address: "Bağdat Caddesi, Kadıköy, İstanbul",
            rating: 4,
            voteCount: 20,
            from: "09:00",
            to: "17:00",
            workHours: 8,
            missions: [
              "Spor"
            ],
          ),
          ExpandedUserProfileCard(
            name: "Ali",
            surname: "Can",
            address: "İstinye Park AVM, Sarıyer, İstanbul",
            rating: 5,
            voteCount: 20,
            from: "11.00",
            to: "15.00",
            workHours: 4,
            missions: [
              "Alışveriş"
            ],
          ),
          ExpandedUserProfileCard(
            name: "Fatma",
            surname: "Yılmaz",
            address: "Acıbadem Hastanesi, Üsküdar, İstanbul",
            rating: 5,
            voteCount: 20,
            from: "12.00",
            to: "13.00",
            workHours: 1,
            missions: [
              "Randevu"
            ],
          ),
          ExpandedUserProfileCard(
            name: "Mehmet",
            surname: "Öztürk",
            address: "Beşiktaş, İstanbul",
            rating: 4,
            voteCount: 20,
            from: "13.00",
            to: "19.00",
            workHours: 6,
            missions: [
              "Ev işleri"
            ],
          ),
          ExpandedUserProfileCard(
            name: "Zeynep",
            surname: "Şahin",
            address: "Taksim Meydanı, Beyoğlu, İstanbul",
            rating: 4,
            voteCount: 20,
            from: "08.00",
            to: "13.00",
            workHours: 5,
            missions: [
              "Ulaşım"
            ],
          ),
        ],
      ),
    );
  }
}
