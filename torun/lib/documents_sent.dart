// ignore_for_file: unnecessary_import

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DocumentsSentPage extends StatefulWidget {
  const DocumentsSentPage({super.key});

  @override
  DocumentsSentPageState createState() => DocumentsSentPageState();
}

class DocumentsSentPageState extends State {
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
                    "assets/trackbar_2.png",
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
            "Belgeleriniz",
            style: TextStyle(fontSize: 50),
          ),
          const Text(
            "Gönderilmiştir",
            style: TextStyle(fontSize: 50),
          ),
          Container(padding: const EdgeInsets.only(top: 20), child: const Text("Sonraki İşlem İçin Kimlik belgenizi", style: TextStyle(fontSize: 25),)),
          const Text("Hazırlayınız", style: TextStyle(fontSize: 25),),
          const SizedBox(height: 150),
          Container(
            width: 400,
            height: 90,
            child: ElevatedButton(
              onPressed: () {},
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
