import 'package:flutter/material.dart';

class GoogleLogin extends StatelessWidget {
  const GoogleLogin({Key? key, required this.text1, required this.image1})
      : super(key: key);
  final String text1, image1;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 350,
      decoration: BoxDecoration(
          color: Color(0xFFFFFFFF),
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 1,
              blurRadius: 10,
              offset: Offset(0, 3),
            ),
          ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image(
            image: AssetImage(image1),
            height: 30,
          ),
          SizedBox(
            width: 10,
          ),
          Text(
            text1,
            style: TextStyle(fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
