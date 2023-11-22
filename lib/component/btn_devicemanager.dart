import 'package:flutter/material.dart';

class BtnDevicemanager extends StatelessWidget {
  const BtnDevicemanager({Key? key, required this.text1}) : super(key: key);
  final String text1;

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
              Icons.phone_android,
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
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Spacer(),
            Icon(Icons.edit_outlined)
          ],
        ),
      ),
    );
  }
}
