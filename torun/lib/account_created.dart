// ignore_for_file: unnecessary_import

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:torun/employee_list.dart';

class AccountCreatedPage extends StatefulWidget {
  const AccountCreatedPage({super.key});

  @override
  AccountCreatedPageState createState() => AccountCreatedPageState();
}

class AccountCreatedPageState extends State {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Column(children: [
          Padding(
            padding: const EdgeInsets.only(left: 33.0, top: 150.0),
            child: Row(
              children: [
                const Expanded(
                  child:
                      Text("Hesap Doğrulama", style: TextStyle(fontSize: 26)),
                ),
                const SizedBox(width: 16),
                Padding(
                  padding: const EdgeInsets.only(right: 33.0),
                  child: Image.asset(
                    "assets/trackbar_empty.png",
                    width: MediaQuery.of(context).size.width * 0.3,
                    fit: BoxFit.contain,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 300,
          ),
          const Text(
            "Hesabınız",
            style: TextStyle(fontSize: 50),
          ),
          const Text(
            "Oluşturuldu",
            style: TextStyle(fontSize: 50),
          ),
          Container(
              padding: const EdgeInsets.only(top: 70),
              child: const Icon(Icons.check_circle, color: Colors.green, size: 100)),
          Container(
            width: 400,
            height: 130,
            padding: const EdgeInsets.only(top: 50.0),
            child: ElevatedButton(
               onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (page) => const EmployeeListPage()));
                    },
              style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromRGBO(
                      167, 201, 87, 1), // Set the background color
                  foregroundColor: Colors.white, // Set the text color
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20))),
              child: const Text(
                "Devam Et",
                style: TextStyle(fontSize: 25),
              ),
            ),
          ),
        ]));
  }
}
