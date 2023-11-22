import 'package:flutter/material.dart';

class ActivityCon extends StatelessWidget {
  const ActivityCon(
      {Key? key,
      required this.text1,
      required this.text2,
      required this.iconanalytics,
      required this.onpressed})
      : super(key: key);
  final String text1, text2;
  final IconData iconanalytics;
  final VoidCallback onpressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
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
              iconanalytics,
              size: 40,
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
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Spacer(),
            InkWell(
              onTap: onpressed,
                child: Icon(Icons.more_vert))
          ],
        ),
      ),
    );
  }
}
