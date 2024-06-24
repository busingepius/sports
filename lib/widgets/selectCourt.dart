import 'package:flutter/material.dart';

class SelectCourt extends StatelessWidget {
  const SelectCourt({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150.0,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 18,
        itemBuilder: (context, index) => Container(
          height: 90.0,
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          margin: const EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(
              Radius.circular(18.0),
            ),
            border: Border.all(
              style: BorderStyle.solid,
              width: 7.0,
              color: index == 3?Colors.red:Colors.grey[200]!,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Court",
                style:  TextStyle(
                  color: Colors.grey,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "${index +1}",
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
