import 'package:flutter/material.dart';
import 'package:iot_teng/component/iot_device_drop.dart';
import 'package:iot_teng/component/status_analytics.dart';
import 'package:iot_teng/component/top_navbar.dart';

import 'activity_screen.dart';
import 'dashboard_screen.dart';

class AnalyticsScreen extends StatefulWidget {
  const AnalyticsScreen({Key? key}) : super(key: key);

  @override
  _AnalyticsScreenState createState() => _AnalyticsScreenState();
}

class _AnalyticsScreenState extends State<AnalyticsScreen> {
  int _currentIndex = 1;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
      body: Column(
        children: <Widget>[
          TopNavbar(icon1: Icons.menu, text1: 'Analaytics'),
          SizedBox(height: 20),
          Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget> [
                    DevDropD(),
                    Padding(
                      padding: const EdgeInsets.only(top: 20, right: 290, bottom: 20),
                      child: Column(
                        children: <Widget>[
                          Text(
                            'Status',
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                        ],
                      ),
                    ),
                    Column(
                      children: <Widget>[
                        StatusAnalytics(text1: 'Temperature', text2: '30°C', icon1: Icons.ac_unit),
                        SizedBox(height: 10,),
                        StatusAnalytics(text1: 'Humidity', text2: '50%', icon1: Icons.water_drop),
                        SizedBox(height: 10,),
                        StatusAnalytics(text1: 'Methane', text2: '20', icon1: Icons.gas_meter_outlined),
                        SizedBox(height: 10,),
                        StatusAnalytics(text1: 'Dust', text2: '12', icon1: Icons.factory_outlined),
                        SizedBox(height: 10,),
                        StatusAnalytics(text1: 'Sensor', text2: 'Active', icon1: Icons.sensors),
                      ],
                    ),
                  ],
                ),
              ),),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
            switch (_currentIndex) {
              case 0:
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => Dashboard()),
                );
                break;
              case 1:
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => AnalyticsScreen()),
                );
                break;
              case 2:
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => ActivityScreen()),
                );
                break;
            }
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.query_stats),
            label: 'Analytics',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.newspaper),
            label: 'News',
          ),
        ],
      ),
        ),
    );
  }
}
