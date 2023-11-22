import 'package:flutter/material.dart';
import 'package:iot_teng/component/btn_apply_filter.dart';
import 'package:iot_teng/component/con_act_filter.dart';
import 'package:iot_teng/component/top_navbar.dart';

class ActivityFilter3 extends StatefulWidget {
  const ActivityFilter3({Key? key}) : super(key: key);

  @override
  _ActivityFilter3State createState() => _ActivityFilter3State();
}

class _ActivityFilter3State extends State<ActivityFilter3> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: <Widget>[
            TopNavbar(icon1: Icons.arrow_back, text1: 'Activity Filter'),
            SizedBox(
              height: 30,
            ),
            ConActFilter(text1: 'From Date', text2: '-'),
            SizedBox(
              height: 10,
            ),
            ConActFilter(text1: 'To Date', text2: '-'),
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
