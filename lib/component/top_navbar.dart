import 'package:flutter/material.dart';
import 'package:iot_teng/pages/page_profile.dart';

class TopNavbar extends StatelessWidget {
   const TopNavbar({super.key, required this.icon1, required this.text1});

   final String text1;
   final IconData icon1;

   @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10, top: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            IconButton(
              onPressed: () {

              },
              icon: Icon(
                icon1,
                size: 30,
              ),
            ),
            Text(
              text1,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
            ),
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PageProfile()),
                );
              },
              icon: Icon(
                Icons.person,
                size: 30,
              ),
            )
          ],
        ),
      ),
    );
  }
}
