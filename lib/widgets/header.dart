import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  final Map<String, dynamic> sport;

  Header({super.key, required this.sport});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Color(sport["color"]),
        boxShadow: [
          BoxShadow(
            color: Color(sport["color"]),
            offset: const Offset(1, 3),
            blurRadius: 6.0,
          ),
        ],
        image: DecorationImage(
          image: AssetImage(sport["image"]),
        ),
      ),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              BackButton(
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.white60),
                  iconColor: MaterialStateProperty.all<Color>(Colors.white),
                ),
              ),
              Text(
                "${sport["title"]}",
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 17.0,
                ),
              ),
              Text(
                "${sport["location"]}",
                style: const TextStyle(
                  color: Colors.white60,
                  fontWeight: FontWeight.bold,
                  fontSize: 12.0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
