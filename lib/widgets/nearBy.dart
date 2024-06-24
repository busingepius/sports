import 'package:flutter/material.dart';

class NearBy extends StatelessWidget {
  const NearBy({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            "Near by",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 17.0,
            ),
          ),
          const Spacer(),
          IconButton(
            onPressed: () => print("search"),
            icon: const Icon(Icons.search),
          ),
          IconButton(
            onPressed: () => print("filter"),
            icon: const Icon(Icons.sort),
          ),
        ],
      ),
    );
  }
}
