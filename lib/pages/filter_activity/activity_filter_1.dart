import 'package:flutter/material.dart';
import 'package:iot_teng/component/btn_apply_filter.dart';
import 'package:iot_teng/component/con_act_filter.dart';
import 'package:iot_teng/component/top_navbar.dart';
import 'package:iot_teng/pages/filter_activity/activity_filter_2.dart';
import 'package:iot_teng/pages/filter_activity/activity_filter_3.dart';

class ActivityFilter1 extends StatefulWidget {
  const ActivityFilter1({Key? key}) : super(key: key);

  @override
  _ActivityFilter1State createState() => _ActivityFilter1State();
}

class _ActivityFilter1State extends State<ActivityFilter1> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: <Widget>[
            TopNavbar(icon1: Icons.arrow_back, text1: 'Activity Filter', onPressed: () {
              Navigator.pop(context);
            }),
            SizedBox(
              height: 20,
            ),
            ConActFilter(
              text1: 'Selected Devices',
              text2: 'All Devices',
              onpressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ActivityFilter2()),
                );
              },
            ),
            SizedBox(
              height: 10,
            ),
            ConActFilter(
              text1: 'From Date',
              text2: '-',
              onpressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ActivityFilter3()),
                );
              },
            ),
            SizedBox(
              height: 10,
            ),
            ConActFilter(text1: 'To Date', text2: '-'),
            SizedBox(
              height: 10,
            ),
            ConActFilter(text1: 'Data Type', text2: 'Everything'),
            SizedBox(
              height: 10,
            ),
            BtnApplyFilter(text1: 'Apply Filter',),
          ],
        ),
      ),
    );
  }
}
