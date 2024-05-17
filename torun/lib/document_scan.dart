// ignore_for_file: unnecessary_import

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DocumentScanPage extends StatefulWidget {
  const DocumentScanPage({super.key});

  @override
  DocumentScanPageState createState() => DocumentScanPageState();
}

class DocumentScanPageState extends State {
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
              Expanded(
                child: Text("Hesap Doğrulama", style: TextStyle(fontSize: 26)),
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
      ],
    ),
  );
}
}
