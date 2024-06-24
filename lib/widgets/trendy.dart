import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sports/constants/data.dart';

import '../screens/screens.dart';

class Trendy extends StatelessWidget {
  const Trendy({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(bottom: 10.0, left: 12.0),
          child: Text(
            "Pick trendy",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
        ),
        SizedBox(
          height: 300.0,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: trendy.length,
            itemBuilder: (BuildContext context, int index) {
              Map<String, dynamic> item = trendy[index];
              return GestureDetector(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Sport(sport: item),
                  ),
                ),
                child: Container(
                  // height: 90.0,
                  width: 200.0,
                  margin: const EdgeInsets.only(
                    // right: 10.0,
                    left: 12.0,
                  ),
                  decoration: BoxDecoration(
                    color: Color(item["color"]),
                    boxShadow: [
                      BoxShadow(
                        color: Color(item["color"]),
                        offset: const Offset(1, 3),
                        blurRadius: 6.0,
                      ),
                    ],
                    image: DecorationImage(
                      image: AssetImage("${item["image"]}"),
                    ),
                    borderRadius: const BorderRadius.all(
                      Radius.circular(20.0),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(
                      top: 30.0,
                      left: 20,
                    ),
                    child: Text(
                      "${item["title"]}",
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
