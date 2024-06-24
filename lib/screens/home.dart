import 'package:flutter/material.dart';

import '../constants/data.dart';
import '../widgets/widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:const CustomScrollView(
          slivers: [
            SliverSafeArea(
              sliver: SliverToBoxAdapter(
                child: SearchGame(),
              ),
            ),
            SliverToBoxAdapter(
              child: Trendy(),
            ),
            SliverToBoxAdapter(
              child: RecentActivities(),
            )
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white,
          items: bottomNavBar
              .map(
                (title, icon) => MapEntry(
                  title,
                  BottomNavigationBarItem(
                    icon: Icon(icon),
                    label:  "",
                  ),
                ),
              )
              .values
              .toList(),
          currentIndex: 0,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.grey,
          selectedFontSize: 11.0,
          unselectedFontSize: 11.0,
          onTap: (index) => print(index),
        ));
  }
}
