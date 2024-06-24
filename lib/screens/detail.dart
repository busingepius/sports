import 'package:flutter/material.dart';
import 'package:sports/widgets/detailHeader.dart';

import '../widgets/widgets.dart';

class Detail extends StatelessWidget {
  final Map<String, dynamic> details;

  const Detail({super.key, required this.details});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DetailHeader(details:details),
            const Padding(
              padding: EdgeInsets.all(12.0),
              child: Text("Select date"),
            ),
            SelectDate(),
            const Padding(
              padding: EdgeInsets.all(12.0),
              child: Text("Select Slot"),
            ),
            SelectSlot(),
            const Padding(
              padding: EdgeInsets.all(12.0),
              child: Text("Select Court"),
            ),
            SelectCourt(),
          ],
        ),
      ),
      bottomNavigationBar: BookNow()
    );
  }
}
