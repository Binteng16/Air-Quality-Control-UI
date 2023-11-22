import 'package:flutter/material.dart';
import 'package:iot_teng/component/slider_alert.dart';

class ConfigureAlert extends StatefulWidget {
  const ConfigureAlert({super.key});

  @override
  State<ConfigureAlert> createState() => _ConfigureAlertState();
}

class _ConfigureAlertState extends State<ConfigureAlert> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: <Widget> [
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10, top: 20),
              child: Row(
                children: <Widget>[
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(
                      Icons.arrow_back,
                      size: 30,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 90),
                    child: Text(
                      'Configure Alert',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20,),
            SliderConfigureAlert(text1: 'Temperature'),
            SliderConfigureAlert(text1: 'Humidity'),
            SliderConfigureAlert(text1: 'Gas'),
            SliderConfigureAlert(text1: 'Methane'),
          ],
        ),
      ),
    );
  }
}
