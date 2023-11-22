import 'package:flutter/material.dart';

class BtnApplyFilter extends StatelessWidget {
  const BtnApplyFilter({Key? key, required this.text1, this.onpressed}) : super(key: key);
  final String text1;
  final VoidCallback? onpressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onpressed,
      child: Container(
        height: 50,
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
        child: Center(
          child: Text(
            text1,
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 15,
            ),
          ),
        ),
      ),
    );
  }
}
