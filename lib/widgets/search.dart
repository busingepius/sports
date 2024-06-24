import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SearchGame extends StatelessWidget {
  const SearchGame({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(12.0),
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(
              right: 180.0,
              top: 20.0,
              bottom: 12.0,
            ),
            child: Text(
              "Search your game",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 30,
                height: 1.0,
              ),
            ),
          ),
          SizedBox(
            height: 50.0,
            child: SearchBar(
              trailing: const [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.search,
                    color: Colors.grey,
                  ),
                ),
              ],
              shadowColor: MaterialStateProperty.all<Color>(Colors.transparent),
              overlayColor:
                  MaterialStateProperty.all<Color>(Colors.transparent),
              elevation: MaterialStateProperty.all<double>(12.0),
            ),
          ),
        ],
      ),
    );
  }
}
