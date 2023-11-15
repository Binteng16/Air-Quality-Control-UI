import 'package:flutter/material.dart';

class CardNews extends StatelessWidget {
  const CardNews({Key? key, required this.image1, required this.text1, required this.text2,}) : super(key: key);

  final String image1, text1, text2;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            height: 170,
            width: 350,
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(image1),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(10)),
            child: Padding(
              padding: const EdgeInsets.only(left: 20, bottom: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Text(
                    text1,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                  Text(
                    text2,
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
