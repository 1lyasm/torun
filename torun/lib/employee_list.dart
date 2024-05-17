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
                name: "Elif",
                surname: "Kaya",
                address: "Bağdat Caddesi, Kadıköy, İstanbul",
                rating: 4.6,
                voteCount: 20,
              ),
              UserProfileCard(
                name: "Ali",
                surname: "Can",
                address: "İstinye Park AVM, Sarıyer, İstanbul",
                rating: 4.9,
                voteCount: 20,
              ),
              UserProfileCard(
                name: "Fatma",
                surname: "Yılmaz",
                address: "Acıbadem Hastanesi, Üsküdar, İstanbul",
                rating: 4.7,
                voteCount: 20,
              ),
              UserProfileCard(
                name: "Mehmet",
                surname: "Öztürk",
                address: "Beşiktaş, İstanbul",
                rating: 4.5,
                voteCount: 20,
              ),
              UserProfileCard(
                name: "Zeynep",
                surname: "Şahin",
                address: "Taksim Meydanı, Beyoğlu, İstanbul",
                rating: 4.8,
                voteCount: 20,
              ),
              UserProfileCard(
                name: "Emre",
                surname: "Yıldırım",
                address: "Bebek Sahili, Beşiktaş, İstanbul",
                rating: 4.6,
                voteCount: 20,
              ),
              UserProfileCard(
                name: "Deniz",
                surname: "Aksoy",
                address: "Maçka Parkı, Şişli, İstanbul",
                rating: 4.7,
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
                rating: 4.5,
                voteCount: 20,
              ),
              UserProfileCard(
                name: "Elif",
                surname: "Topçu",
                address: "Florence Nightingale Hastanesi, Şişli, İstanbul",
                rating: 4.8,
                voteCount: 20,
              )
        ]));
  }
}
