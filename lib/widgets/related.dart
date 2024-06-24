import 'package:flutter/material.dart';

import '../constants/data.dart';
import '../screens/screens.dart';

class Related extends StatelessWidget {
  const Related({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
        children: related.map((e) {
          return Padding(
            padding: const EdgeInsets.only(left: 8.0, right: 8.0, bottom: 12.0),
            child: GestureDetector(
              onTap: ()=>Navigator.push(context,MaterialPageRoute(builder: (context)=>Detail(details:e))),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 170,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(8.0)),
                      image: DecorationImage(
                        image: AssetImage("${e["image"]}"),
                        fit: BoxFit.cover,
                      ),
                      gradient:const LinearGradient(
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                        colors: [
                          Colors.black87,
                          Colors.black45,
                          Colors.transparent
                        ],
                        stops: [0, 0.25, 1],
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Row(
                            children: [
                              const Row(
                                children: [
                                  Icon(Icons.star,
                                      size: 15.0, color: Colors.yellowAccent,),
                                  Icon(Icons.star,
                                      size: 15.0, color: Colors.yellowAccent,),
                                  Icon(Icons.star,
                                      size: 15.0, color: Colors.yellowAccent,),
                                  Icon(Icons.star,
                                      size: 15.0, color: Colors.yellowAccent,),
                                  Icon(
                                    Icons.star,
                                    size: 15.0,
                                    color: Colors.yellowAccent,
                                  ),
                                ],
                              ),
                              const SizedBox(width: 5.0),
                              Text(
                                "${e["rating"]}/5",
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12.0,
                                ),
                              ),
                              const Spacer(),
                              Text(
                                "${e["reviews"]} Reviews",
                                style: const TextStyle(
                                  color: Colors.white60,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12.0,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 5.0),
                  Text(
                    "${e["name"]}",
                    style: const TextStyle(color: Colors.black),
                  ),
                  const SizedBox(height: 5.0),
                  RichText(
                    text: TextSpan(
                      text: "${e["location"]}\n",
                      style: const TextStyle(
                        color: Colors.black54,
                        fontSize: 12.0,
                      ),
                      children: [
                        TextSpan(
                          text: '${e["street"]}',
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        }).toList(),
    );
  }
}
