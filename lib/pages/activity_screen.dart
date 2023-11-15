import 'package:flutter/material.dart';
import 'package:iot_teng/component/activity_con.dart';
import 'package:iot_teng/component/top_navbar.dart';

import 'analytics_screen.dart';
import 'dashboard_screen.dart';

class ActivityScreen extends StatefulWidget {
  const ActivityScreen({Key? key}) : super(key: key);

  @override
  _ActivityScreenState createState() => _ActivityScreenState();
}

class _ActivityScreenState extends State<ActivityScreen> {
  int _currentIndex = 2;
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
          body: Column(
            children: <Widget> [
              TopNavbar(icon1: Icons.menu, text1: 'Activity'),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget> [
                    Text('Activity Log', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                    Icon(Icons.filter_alt_outlined, size: 30,)
                  ],
                ),
              ),
              SizedBox(height: 20,),
              ActivityCon(text1: '24/10/23 - IOT-Device-1', text2: 'Gas leak resolved', iconanalytics: Icons.oil_barrel_outlined),
              SizedBox(height: 10,),
              ActivityCon(text1: '24/10/23 - IOT-Device-1', text2: 'Gas leak resolved', iconanalytics: Icons.oil_barrel_outlined),
              SizedBox(height: 10,),
              ActivityCon(text1: '24/10/23 - IOT-Device-1', text2: 'Gas leak resolved', iconanalytics: Icons.oil_barrel_outlined),
              SizedBox(height: 10,),
              ActivityCon(text1: '24/10/23 - IOT-Device-1', text2: 'Gas leak resolved', iconanalytics: Icons.oil_barrel_outlined),
            ],
          ),
        ),
    );
  }
}
