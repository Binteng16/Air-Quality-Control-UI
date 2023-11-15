import 'package:flutter/material.dart';
import 'package:iot_teng/component/google_login.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 140),
            child: Column(
              children: <Widget> [
                Column(
                  children: <Widget> [
                    Image(image: AssetImage('assets/img_login.png'),),
                    Text('Welcome to NAFAS', style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),),
                    Text('Breathe Clean, Breathe Healthy', style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),),
                  ],
                ),
                SizedBox(height: 40,),
                GoogleLogin(text1: 'Log in With Google', image1: 'assets/icon_google.png'),
                SizedBox(height: 10,),
                GoogleLogin(text1: 'Log in With Github', image1: 'assets/icon_github.png'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
