import 'package:flutter/material.dart';
import 'package:iot_teng/component/con_activity_detail.dart';
import 'package:iot_teng/component/top_navbar.dart';

class ActivityLogDetail1 extends StatefulWidget {
  const ActivityLogDetail1({Key? key}) : super(key: key);

  @override
  _ActivityLogDetail1State createState() => _ActivityLogDetail1State();
}

class _ActivityLogDetail1State extends State<ActivityLogDetail1> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: <Widget>[
            TopNavbar(
                icon1: Icons.close,
                text1: 'Gas Leak Detected',
                onPressed: () {
                  Navigator.pop(context);
                }),
            Padding(
                padding: const EdgeInsets.only(top: 70),
                child: ConActivityDetail(
                  img: AssetImage('assets/gasleak.png'),),),
          ],
        ),
      ),
    );
  }
}
