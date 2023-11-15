import 'package:flutter/material.dart';

class StatusAnalytics extends StatelessWidget {
  const StatusAnalytics({Key? key, required this.text1, required this.text2, required this.icon1}) : super(key: key);
  final String text1, text2;
  final IconData icon1;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
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
            Icon(
              icon1,
              size: 50,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    text1,
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                  Text(
                    text2,
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Spacer(),
            Icon(Icons.arrow_forward_ios)
          ],
        ),
      ),
    );
  }
}
