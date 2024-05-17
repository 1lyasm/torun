// ignore_for_file: unnecessary_import

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class UserProfileCard extends StatelessWidget {
  final String name;
  final String surname;
  final String address;
  final double rating;
  final int voteCount;

  const UserProfileCard(
      {super.key,
      required this.name,
      required this.surname,
      required this.address,
      required this.rating,
      required this.voteCount});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(50.0),
      child: GestureDetector(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (page) => const Placeholder()));
        },
        child: Container(
          alignment: Alignment.center,
          height: 200,
          width: 425,
          decoration: BoxDecoration(
              color: Colors.grey, borderRadius: BorderRadius.circular(20)),
          child: Card(
            shape: RoundedRectangleBorder(
                side: const BorderSide(color: Colors.black, width: 1),
                borderRadius: BorderRadius.circular(20)),
            color: const Color.fromARGB(255, 195, 184, 184),
            elevation: 4.0,
            margin: const EdgeInsets.all(30.0),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    '$name $surname',
                    style: const TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(Icons.location_on_outlined),
                      const SizedBox(width: 4.0),
                      Text(address),
                    ],
                  ),
                  const SizedBox(height: 8.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(5, (index) {
                      return Icon(
                        index < rating ? Icons.star : Icons.star_border,
                        color: Colors.amber,
                      );
                    }),
                  ),
                  const SizedBox(height: 4.0),
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
        ),
      ),
    );
  }
}
