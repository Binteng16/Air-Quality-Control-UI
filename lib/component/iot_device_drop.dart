import 'package:flutter/material.dart';

class DevDropD extends StatelessWidget {
  const DevDropD({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 350,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Color(0xFFFFFFFF),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 1,
              blurRadius: 10,
              offset: Offset(0, 3),
            ),
          ]
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: Row(
          children: [
            Text('IOT-Device-1', style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold
            ),),
            Spacer(),
            Icon(Icons.keyboard_arrow_down),
          ],
        ),
      ),
    );
  }
}
