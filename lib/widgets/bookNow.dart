import 'package:flutter/material.dart';

class BookNow extends StatelessWidget {
  const BookNow({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: TextButton.icon(
        onPressed: () => print(""),
        label: Text(
          "BOOK NOW",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        icon: Icon(
          Icons.arrow_forward,
          color: Colors.white,
        ),
      ),
    );
  }
}
