import 'package:flutter/material.dart';
import 'package:sports/constants/data.dart';

class RecentActivities extends StatelessWidget {
  const RecentActivities({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: recent
            .map(
              (data) => Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(15.0),
                        height: 90,
                        width: 90,
                        // color: Colors.blue,
                        child: Stack(
                          fit: StackFit.expand,
                          children: [
                            ClipRRect(
                              borderRadius: const BorderRadius.all(
                                Radius.circular(10.0),
                              ),
                              child: SizedBox(
                                height: 70,
                                width: 70,
                                child: Image.asset(
                                  "${data["image"]}",
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        top: 5.0,
                        left: 5.0,
                        child: Container(
                          padding: const EdgeInsets.all(7),
                          decoration: BoxDecoration(
                            color: Color((data["color"]) as int),
                            borderRadius: const BorderRadius.all(
                              Radius.circular(30.0),
                            ),
                          ),
                          child: ImageIcon(
                            AssetImage("${data["icon"]}"),
                            size: 17.0,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "${data["title"]}",
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                        ),
                      ),
                      Text(
                        "${data["subtitle"]}",
                        style: const TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
            .toList(),

        // Text(
        //       "Recent activities",
        //       style: TextStyle(
        //         color: Colors.black,
        //         fontWeight: FontWeight.bold,
        //         fontSize: 20,
        //       ),
        //     ),
      ),
    );
  }
}
