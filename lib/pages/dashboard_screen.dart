import 'package:flutter/material.dart';
import 'package:iot_teng/component/card_analytics.dart';
import 'package:iot_teng/component/card_news.dart';
import 'package:iot_teng/component/iot_device_drop.dart';
import 'package:iot_teng/component/top_navbar.dart';
import 'package:iot_teng/pages/activity_screen.dart';
import 'package:iot_teng/pages/analytics_screen.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
        backgroundColor: Color(0xFFFFFFFF),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: TopNavbar(icon1: Icons.menu, text1: 'Dashboard'),
            ),
            DevDropD(),
            SizedBox(height: 20),
            CardNews(
                image1: 'assets/download.jpeg',
                text1: 'Clean and Fresh Air',
                text2: 'Clean and fresh air is the key to healthy'),
            Padding(
              padding: const EdgeInsets.only(top: 20, right: 250, bottom: 20),
              child: Column(
                children: <Widget>[
                  Text(
                    'Analytics',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: GridView.count(
                  crossAxisCount: 2,
                  crossAxisSpacing: 8.0,
                  mainAxisSpacing: 8.0,
                  padding: EdgeInsets.all(8.0),
                  children: <Widget>[
                    CardAnalytics(
                        text1: 'Temperature',
                        text2: '27°C',
                        iconanalytics: Icons.ac_unit),
                    CardAnalytics(
                        text1: 'Humidity',
                        text2: '50%',
                        iconanalytics: Icons.water_drop),
                    CardAnalytics(
                        text1: 'Methane',
                        text2: '20ppm',
                        iconanalytics: Icons.gas_meter_outlined),
                    CardAnalytics(
                        text1: 'Dust',
                        text2: '12mg',
                        iconanalytics: Icons.factory_outlined),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
