import 'package:flutter/material.dart';
import 'package:iot_teng/component/con_act_filter.dart';
import 'package:iot_teng/component/con_act_filter_2.dart';
import 'package:iot_teng/component/top_navbar.dart';

class ActivityFilter2 extends StatefulWidget {
  const ActivityFilter2({Key? key}) : super(key: key);

  @override
  _ActivityFilter2State createState() => _ActivityFilter2State();
}

class _ActivityFilter2State extends State<ActivityFilter2> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: <Widget>[
            TopNavbar(
                icon1: Icons.arrow_back,
                text1: 'Activity Filter',
                onPressed: () {
                  Navigator.pop(context);
                }),
            SizedBox(
              height: 30,
            ),
            ConActFilter(text1: 'Selected Devices', text2: 'All Devices'),
            SizedBox(
              height: 10,
            ),
            ConActFilter2(
                text1: 'Online', text2: 'IOT-Device-1', text3: 'BEEP '),
            SizedBox(
              height: 10,
            ),
            ConActFilter2(
                text1: 'Offline', text2: 'IOT-Device-2', text3: 'BEEP '),
          ],
        ),
      ),
    );
  }
}
