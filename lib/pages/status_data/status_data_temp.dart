import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:iot_teng/component/btn_info_status_data.dart';
import 'package:iot_teng/component/top_navbar.dart';

class StatusDataTemp extends StatefulWidget {
  const StatusDataTemp({Key? key}) : super(key: key);

  @override
  _StatusDataTempState createState() => _StatusDataTempState();
}

class _StatusDataTempState extends State<StatusDataTemp> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            TopNavbar(icon1: Icons.close, text1: 'Temperature'),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 30),
              child: Container(
                height: 200,
                width: 350,
                child: LineChart(
                  LineChartData(
                      gridData: FlGridData(show: true),
                      titlesData: FlTitlesData(
                        show: true,
                        rightTitles: const AxisTitles(
                          sideTitles: SideTitles(
                            showTitles: false,
                          ),
                        ),
                        topTitles: const AxisTitles(
                          sideTitles: SideTitles(
                            showTitles: false,
                          ),
                        ),
                      ),
                      borderData: FlBorderData(
                        show: true,
                        border: Border.all(color: Colors.blue, width: 1),
                      ),
                      minX: 0,
                      maxX: 10,
                      minY: 0,
                      maxY: 10,
                      lineBarsData: [
                        LineChartBarData(
                          spots: [
                            FlSpot(0, 1),
                            FlSpot(2, 2),
                            FlSpot(3, 4),
                            FlSpot(4, 8),
                            FlSpot(5, 4),
                            FlSpot(6, 3),
                            FlSpot(7, 4),
                            FlSpot(8, 6),
                            FlSpot(9, 6),
                            FlSpot(10, 6),
                          ],
                          isCurved: true,
                          color: Colors.blue,
                          dotData: FlDotData(show: false),
                          belowBarData: BarAreaData(show: false),
                        )
                      ]),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 40,
              width: 350,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 1,
                      blurRadius: 10,
                      offset: Offset(0, 3),
                    ),
                  ]),
              child: Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'Last 10 Days',
                            style: TextStyle(
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Spacer(),
                    InkWell(
                        onTap: () {}, child: Icon(Icons.keyboard_arrow_down)),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            BtnInfoStatusData(
              text1: 'Average Temperature',
              text2: '28°C',
              icon1: Icons.ac_unit,
            ),
            SizedBox(
              height: 10,
            ),
            BtnInfoStatusData(
              text1: 'Maximum Temperature',
              text2: '30°C',
              icon1: Icons.ac_unit,
            ),
            SizedBox(
              height: 10,
            ),
            BtnInfoStatusData(
              text1: 'Minimum Temperature',
              text2: '25°C',
              icon1: Icons.ac_unit,
            ),
          ],
        ),
      ),
    );
  }
}
