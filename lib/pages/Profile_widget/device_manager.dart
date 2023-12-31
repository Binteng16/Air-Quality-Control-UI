import 'package:flutter/material.dart';
import 'package:iot_teng/component/btn_devicemanager.dart';

class DeviceManager extends StatefulWidget {
  const DeviceManager({Key? key}) : super(key: key);

  @override
  _DeviceManagerState createState() => _DeviceManagerState();
}

class _DeviceManagerState extends State<DeviceManager> {
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
                      'Device Manager',
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
            BtnDevicemanager(text1: 'IOT-Device-1'),
            SizedBox(height: 10,),
            BtnDevicemanager(text1: 'IOT-Device-2'),
          ],
        ),
      ),
    );
  }
}
