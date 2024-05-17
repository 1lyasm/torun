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
        children: const [
          UserProfileCard(
            name: "Elif",
            surname: "Kaya",
            address: "Bağdat Caddesi, Kadıköy, İstanbul",
            rating: 4,
            voteCount: 20,
          ),
          UserProfileCard(
            name: "Ali",
            surname: "Can",
            address: "İstinye Park AVM, Sarıyer, İstanbul",
            rating: 5,
            voteCount: 20,
          ),
          UserProfileCard(
            name: "Fatma",
            surname: "Yılmaz",
            address: "Acıbadem Hastanesi, Üsküdar, İstanbul",
            rating: 5,
            voteCount: 20,
          ),
          UserProfileCard(
            name: "Mehmet",
            surname: "Öztürk",
            address: "Beşiktaş, İstanbul",
            rating: 4,
            voteCount: 20,
          ),
          UserProfileCard(
            name: "Zeynep",
            surname: "Şahin",
            address: "Taksim Meydanı, Beyoğlu, İstanbul",
            rating: 4,
            voteCount: 20,
          ),
          UserProfileCard(
            name: "Emre",
            surname: "Yıldırım",
            address: "Bebek Sahili, Beşiktaş, İstanbul",
            rating: 5,
            voteCount: 20,
          ),
          UserProfileCard(
            name: "Deniz",
            surname: "Aksoy",
            address: "Maçka Parkı, Şişli, İstanbul",
            rating: 3,
            voteCount: 20,
          ),
          UserProfileCard(
            name: "Selin",
            surname: "Güler",
            address: "Kanyon AVM, Levent, İstanbul",
            rating: 4.9,
            voteCount: 20,
          ),
          UserProfileCard(
            name: "Burak",
            surname: "Demir",
            address: "Şişli, İstanbul",
            rating: 4,
            voteCount: 20,
          ),
          UserProfileCard(
            name: "Elif",
            surname: "Topçu",
            address: "Florence Nightingale Hastanesi, Şişli, İstanbul",
            rating: 3,
            voteCount: 20,
          ),
        ],
      ),
    );
  }
}
