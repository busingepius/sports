import 'package:flutter/material.dart';

import '../constants/data.dart';

class SelectDate extends StatelessWidget {
  SelectDate({super.key});

  final DateTime date = new DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 31,
        itemBuilder: (context, index) => Container(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          margin: const EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(
              Radius.circular(18.0),
            ),
            border: Border.all(
              style: BorderStyle.solid,
              width: 7.0,
              color: index == date.day?Colors.red:Colors.grey[200]!,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              index == date.day
                  ? const SizedBox.shrink()
                  : Text(
                      months[date.month-1],
                      style: const TextStyle(
                        color: Colors.grey,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
              Text(
                "${index == date.day ? "TODAY" : index+1}",
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
