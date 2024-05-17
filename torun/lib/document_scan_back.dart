// ignore_for_file: unnecessary_import

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DocumentScanBackPage extends StatefulWidget {
  const DocumentScanBackPage({super.key});

  @override
  DocumentScanBackPageState createState() => DocumentScanBackPageState();
}

class DocumentScanBackPageState extends State {
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
                Expanded(
                  child:
                      Text("Hesap Doğrulama", style: TextStyle(fontSize: 26)),
                ),
                SizedBox(width: 16),
                Padding(
                  padding: const EdgeInsets.only(right: 33.0),
                  child: Image.asset(
                    "assets/trackbar_3.png",
                    width: MediaQuery.of(context).size.width * 0.3,
                    fit: BoxFit.contain,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 200),
          Text("Kimlik Belgesi Taratma", style: TextStyle(fontSize: 26)),
          SizedBox(height: 50,),
          Container(height: 300, width: 360, decoration: BoxDecoration(borderRadius: BorderRadius.circular(15.0), color: Colors.grey),),
          Container(
            width: 400,
            height: 130,
            padding: const EdgeInsets.only(top: 50.0),
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromRGBO(
                      167, 201, 87, 1), // Set the background color
                  foregroundColor: Colors.white, // Set the text color
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20))),
              child: Text("Devam Et", style: TextStyle(fontSize: 25),),
            ),
          ),
        ]));
  }
}
