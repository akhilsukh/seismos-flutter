import 'package:flutter/material.dart';
import 'package:seismos_flutter/pages/prep-detail-page.dart';
import '../components/widgets.dart';

class Preparatory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Header(title: "Preparation Guide"),
      body: Container(
        margin: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
        child: Column(
          children: [
            ImageButton(
              title: "General",
              image: AssetImage('assets/general/prep-general.png'),
              route: PrepDetailGeneral(),
            ),
            ImageButton(
              title: "Before",
              image: AssetImage('assets/before/prep-before.png'),
              route: PrepDetailBefore(),
            ),
            ImageButton(
              title: "During",
              image: AssetImage('assets/during/prep-during.png'),
              route: PrepDetailDuring(),
            ),
            ImageButton(
              title: "After",
              image: AssetImage('assets/after/prep-after.png'),
              route: PrepDetailAfter(),
            )
          ],
        ),
      ),
    );
  }
}
