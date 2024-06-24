import 'package:flutter/material.dart';

class DetailHeader extends StatelessWidget {
  final Map<String, dynamic> details;
  DetailHeader({super.key,required this.details});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 170,
          foregroundDecoration: BoxDecoration(
            gradient: const LinearGradient(
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
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("${details["image"]}"),
              fit: BoxFit.cover,
            ),
          ),
        ),
        SafeArea(
          child: BackButton(
            style: ButtonStyle(
              backgroundColor:
              MaterialStateProperty.all<Color>(Colors.white60),
              iconColor: MaterialStateProperty.all<Color>(Colors.white),
            ),
          ),
        ),
        Positioned(
          left: 5.0,
          bottom: 50.0,
          child: Text(
            "${details["name"]}",
            style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 17,
                color: Color(0xfffffffff)),
          ),
        ),
        Positioned(
          left: 5.0,
          bottom: 0.0,
          right: 5.0,
          child: SizedBox(
            height: 50.0,
            width: MediaQuery.of(context).size.width,
            child: Row(
              children: [
                Icon(
                  Icons.star,
                  size: 15.0,
                  color: Colors.yellowAccent,
                ),
                Icon(
                  Icons.star,
                  size: 15.0,
                  color: Colors.yellowAccent,
                ),
                Icon(
                  Icons.star,
                  size: 15.0,
                  color: Colors.yellowAccent,
                ),
                Icon(
                  Icons.star,
                  size: 15.0,
                  color: Colors.yellowAccent,
                ),
                Icon(
                  Icons.star,
                  size: 15.0,
                  color: Colors.yellowAccent,
                ),
                const SizedBox(width: 5.0),
                Text(
                  "${details["rating"]}/5",
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 12.0,
                  ),
                ),
                const Spacer(),
                Text(
                  "${details["reviews"]} Reviews",
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
      ],
    );
  }
}
