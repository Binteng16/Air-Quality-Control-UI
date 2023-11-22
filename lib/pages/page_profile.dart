import 'package:flutter/material.dart';

import '../component/btn_apply_filter.dart';
import 'Profile_widget/device_manager.dart';

class PageProfile extends StatefulWidget {
  const PageProfile({Key? key}) : super(key: key);

  @override
  _PageProfileState createState() => _PageProfileState();
}

class _PageProfileState extends State<PageProfile> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10, top: 20),
              child: Row(
                children: <Widget>[
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.arrow_back,
                      size: 30,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 120),
                    child: Text(
                      'Profile',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              height: 150,
              width: 150,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Bintang Ghani',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 40,
            ),
            BtnApplyFilter(
              text1: 'Configure Alert',
            ),
            SizedBox(
              height: 10,
            ),
            BtnApplyFilter(
              text1: 'Device Manager',
              onpressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DeviceManager()),
                );
              },
            ),
            SizedBox(
              height: 10,
            ),
            BtnApplyFilter(
              text1: 'Log Out',
            ),
          ],
        ),
      ),
    );
  }
}
