import 'package:flutter/material.dart';

class SelectSlot extends StatelessWidget {
  SelectSlot({super.key});

  final TimeOfDay timeOfDay = TimeOfDay.now();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 24,
        itemBuilder: (context, index) => Container(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          margin: const EdgeInsets.all(8.0),
          decoration: BoxDecoration(boxShadow: [BoxShadow(color: Colors.grey[100]!,offset: Offset(2, 4))],
            color: index == timeOfDay.hour
                ? Colors.red
                : index <= timeOfDay.hour
                    ? Colors.grey[50]!
                    : Colors.grey[200]!,
            borderRadius: const BorderRadius.all(
              Radius.circular(18.0),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "${index}:00",
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "${index + 1}:00",
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
