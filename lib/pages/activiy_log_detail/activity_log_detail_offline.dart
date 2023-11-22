import 'package:flutter/material.dart';

import '../../component/con_activity_detail.dart';
import '../../component/top_navbar.dart';

class ActivityLogDetailOffline extends StatefulWidget {
  const ActivityLogDetailOffline({Key? key}) : super(key: key);

  @override
  _ActivityLogDetailOfflineState createState() =>
      _ActivityLogDetailOfflineState();
}

class _ActivityLogDetailOfflineState extends State<ActivityLogDetailOffline> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: <Widget>[
            TopNavbar(icon1: Icons.close, text1: 'Sensor Not Detected'),
            Padding(
                padding: const EdgeInsets.only(top: 70),
                child: ConActivityDetail(
                    img: Image(image: AssetImage('assets/offline.png')))),
          ],
        ),
      ),
    );
  }
}
