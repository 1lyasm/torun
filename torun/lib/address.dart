// ignore_for_file: unnecessary_import

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AddressPage extends StatefulWidget {
  const AddressPage({super.key});

  @override
  AddressPageState createState() => AddressPageState();
}

class AddressPageState extends State {
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
          Padding(
            padding: const EdgeInsets.only(left: 33.0, top: 150.0),
            child: Row(
              children: [
                const Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Hesap Doğrulama", style: TextStyle(fontSize: 26)),
                    ],
                  ),
                ),
                const SizedBox(width: 16),
                Padding(
                  padding: const EdgeInsets.only(right: 33.0),
                  child: Image.asset(
                    "assets/trackbar_1.png",
                    width: MediaQuery.of(context).size.width * 0.3,
                    fit: BoxFit.contain,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 200,
          ),
          const Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(
                  left: 33.0), // Adjust the left padding as needed
              child: Text("Ikametgah", style: TextStyle(fontSize: 26)),
            ),
          ),
          const Align(
            alignment: Alignment.centerLeft,
            child: Padding(
                padding: EdgeInsets.only(left: 33.0, top: 20),
                child: Text("Dosyayı Buraya Yükleyiniz",
                    style: TextStyle(fontSize: 18))),
          ),
          const Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 33.0, top: 80),
                child:
                    Text("Adli Sicil Belgesi", style: TextStyle(fontSize: 26)),
              )),
          const Align(
            alignment: Alignment.centerLeft,
            child: Padding(
                padding: EdgeInsets.only(left: 33.0, top: 20),
                child: Text("Dosyayı Buraya Yükleyiniz",
                    style: TextStyle(fontSize: 18))),
          ),
          const SizedBox(height: 200,),
          Container(
            width: 400,
            height: 130,
            padding: const EdgeInsets.only(top: 50.0),
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromRGBO(
                      167, 201, 87, 1), // Set the background color
                  foregroundColor: Colors.white, // Set the text color
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20))),
              child: const Text("Devam Et", style: TextStyle(fontSize: 25),),
            ),
          ),
          ],
      ),
    );
  }
}
