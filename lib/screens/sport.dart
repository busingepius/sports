import 'package:flutter/material.dart';

import '../constants/data.dart';
import '../widgets/widgets.dart';

class Sport extends StatelessWidget {
  final Map<String, dynamic> sport;

  Sport({super.key, required this.sport});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Header(sport:sport),
            const NearBy(),
            const Related(),
          ],
        ),
      ),
    );
  }
}
