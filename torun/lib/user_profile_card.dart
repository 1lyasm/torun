import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

class UserProfileCard extends StatelessWidget {
  final String name;
  final String surname;
  final String address;
  final double rating;
  final int voteCount;

  UserProfileCard(
      {required this.name,
      required this.surname,
      required this.address,
      required this.rating,
      required this.voteCount});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 200,
      width: 425,
      decoration: BoxDecoration(
          color: Color.fromARGB(255, 205, 202, 202), borderRadius: BorderRadius.circular(20)),
      child: Card(
        shape: RoundedRectangleBorder(
            side: BorderSide(color: Colors.black, width: 1),
            borderRadius: BorderRadius.circular(20)),
        color: Color.fromARGB(255, 234, 232, 232),
        elevation: 4.0,
        margin: EdgeInsets.all(30.0),
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                '$name $surname',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.location_on_outlined),
                  SizedBox(width: 4.0),
                  Text(address),
                ],
              ),
              SizedBox(height: 8.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(5, (index) {
                  return Icon(
                    index < rating ? Icons.star : Icons.star_border,
                    color: Colors.amber,
                  );
                }),
              ),
              SizedBox(height: 4.0),
              // Text(
              //   '$voteCount',
              //   style: TextStyle(
              //     fontSize: 18.0,
              //     fontWeight: FontWeight.bold,
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
