import 'package:flutter/material.dart';

import '../../component/con_activity_detail.dart';
import '../../component/top_navbar.dart';

class ActivityLogDetailSensor extends StatefulWidget {
  const ActivityLogDetailSensor({Key? key}) : super(key: key);

  @override
  _ActivityLogDetailSensorState createState() =>
      _ActivityLogDetailSensorState();
}

class _ActivityLogDetailSensorState extends State<ActivityLogDetailSensor> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: <Widget>[
            TopNavbar(icon1: Icons.close, text1: 'Sensor Detected'),
            Padding(
                padding: const EdgeInsets.only(top: 70),
                child: ConActivityDetail(
                    img: Image(image: AssetImage('assets/online.png')))),
          ],
        ),
      ),
    );
  }
}
