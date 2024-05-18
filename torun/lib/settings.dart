// ignore_for_file: unnecessary_import

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:torun/employee_list.dart';

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
      backgroundColor: Colors.white,
      body: Column(
        children: [
          const SizedBox(height: 50),
          Row(
            children: [
              const SizedBox(
                width: 50,
              ),
              IconButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (page) => const EmployeeListPage()));
                  },
                  icon: Icon(
                    Icons.arrow_back_ios,
                    color: Colors.black.withOpacity(1),
                  ),
                  iconSize: 50)
            ],
          ),
          const SizedBox(height: 50),
          Icon(
            Icons.account_circle_rounded,
            size: 220,
            color: Colors.grey.withOpacity(0.5),
          ),
          const SizedBox(height: 20),
          const Text(
            "Simanur H.",
            style: TextStyle(
                fontSize: 30,
                color: Color.fromRGBO(8, 102, 52, 1),
                fontWeight: FontWeight.bold),
          ),
          const SizedBox(
              width: 350,
              child: Divider(
                color: Color.fromRGBO(167, 201, 87, 1),
                thickness: 5,
              )),
          const Card(
            color: Color(0xFFE9E9E9),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'DOĞUM TARİHİ',
                      style: TextStyle(
                          fontSize: 20,
                          color: Color(0xFF086634),
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'NUMARA',
                      style: TextStyle(
                          fontSize: 20,
                          color: Color(0xFF086634),
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'E-POSTA',
                      style: TextStyle(
                          fontSize: 20,
                          color: Color(0xFF086634),
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'ADRES',
                      style: TextStyle(
                          fontSize: 20,
                          color: Color(0xFF086634),
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      '19.05.1962',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    Text(
                      '+903789246066',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    Text(
                      'rafiqog@bk.ru',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    Text(
                      'Istanbul, Beşiktaş',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
              width: 350,
              child: Divider(
                color: Color.fromRGBO(167, 201, 87, 1),
                thickness: 5,
              )),
          const Text(
            'Geçmiş işlerim',
            style: TextStyle(
              color: Color(0xFFA7C957),
            ),
          ),
          const Text(
            'Gizlilik Politikası',
            style: TextStyle(
              color: Color(0xFFA7C957),
            ),
          ),
          const Text(
            'Hakkımızda',
            style: TextStyle(
              color: Color(0xFFA7C957),
            ),
          ),
        ],
      ),
    );
  }
}
