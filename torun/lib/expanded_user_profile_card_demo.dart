// ignore_for_file: unnecessary_import, unused_import

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:torun/expanded_user_profile_card.dart';
import 'package:torun/user_profile_card.dart';

class ExpandedUserProfileCardDemoPage extends StatefulWidget {
  const ExpandedUserProfileCardDemoPage({super.key});

  @override
  ExpandedUserProfileCardDemoPageState createState() =>
      ExpandedUserProfileCardDemoPageState();
}

class ExpandedUserProfileCardDemoPageState extends State {
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
          ExpandedUserProfileCard(
              name: "Elif",
              surname: "Kaya",
              address: "Bağdat Caddesi, Kadıköy, İstanbul",
              rating: 4,
              voteCount: 20,
              from: "12.00",
              to: "22.00",
              workHours: 1,
              missions: ["Mission 1", "Mission 2", "Mission 3"],),
          ExpandedUserProfileCard(
              name: "Ali",
              surname: "Can",
              address: "İstinye Park AVM, Sarıyer, İstanbul",
              rating: 5,
              voteCount: 20,
              from: "13:00",
              to: "22.00",
              workHours: 2,
              missions:["Mission"]
              ),
          ExpandedUserProfileCard(
              name: "Fatma",
              surname: "Yılmaz",
              address: "Acıbadem Hastanesi, Üsküdar, İstanbul",
              rating: 5,
              voteCount: 20,
              from: "13:00",
              to: "23.00",
              workHours: 3,
              missions: ["Mission 1", "Mission 2", "Mission 3"],),
          ExpandedUserProfileCard(
              name: "Mehmet",
              surname: "Öztürk",
              address: "Beşiktaş, İstanbul",
              rating: 4,
              voteCount: 20,
              from: "13:00",
              to: "23.00",
              workHours: 4,
              missions: ["Mission 1", "Mission 2", "Mission 3"],),
          ExpandedUserProfileCard(
              name: "Zeynep",
              surname: "Şahin",
              address: "Taksim Meydanı, Beyoğlu, İstanbul",
              rating: 4,
              voteCount: 20,
              from: "13:00",
              to: "23.00",
              workHours: 5,
              
              missions: ["Mission 1", "Mission 2", "Mission 3"],),
          ExpandedUserProfileCard(
              name: "Emre",
              surname: "Yıldırım",
              address: "Bebek Sahili, Beşiktaş, İstanbul",
              rating: 5,
              voteCount: 20,
              from: "13:00",
              to: "23.00",
              workHours: 6,
              missions: ["Mission 1", "Mission 2", "Mission 3"],),
          ExpandedUserProfileCard(
              name: "Deniz",
              surname: "Aksoy",
              address: "Maçka Parkı, Şişli, İstanbul",
              rating: 3,
              voteCount: 20,
              from: "13:00",
              to: "23.00",
              workHours: 7,
              missions: ["Mission 1", "Mission 2", "Mission 3"],),
              
          ExpandedUserProfileCard(
              name: "Selin",
              surname: "Güler",
              address: "Kanyon AVM, Levent, İstanbul",
              rating: 4.9,
              voteCount: 20,
              from: "13:00",
              to: "23.00",
              workHours: 8,
              
              missions: ["Mission 1", "Mission 2", "Mission 3"],),
          ExpandedUserProfileCard(
              name: "Burak",
              surname: "Demir",
              address: "Şişli, İstanbul",
              rating: 4,
              voteCount: 20,
              from: "13:00",
              to: "23.00",
              workHours: 9,
              
              missions: ["Mission 1", "Mission 2", "Mission 3"],),
          ExpandedUserProfileCard(
              name: "Elif",
              surname: "Topçu",
              address: "Florence Nightingale Hastanesi, Şişli, İstanbul",
              rating: 3,
              voteCount: 20,
              from: "13:00",
              to: "23.00",
              workHours: 10,
              
              missions: ["Mission 1", "Mission 2", "Mission 3"],),
        ],
      ),
    );
  }
}
