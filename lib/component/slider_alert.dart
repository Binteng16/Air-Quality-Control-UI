import 'package:flutter/material.dart';

class SliderConfigureAlert extends StatefulWidget {
  final String text1;
  const SliderConfigureAlert({Key? key, required this.text1}) : super(key: key);

  @override
  _SliderConfigureAlertState createState() => _SliderConfigureAlertState();
}

class _SliderConfigureAlertState extends State<SliderConfigureAlert> {
  RangeValues values = RangeValues(0, 100);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      height: 100,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 22, top: 5),
            child: Text(
              widget.text1,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
          SliderTheme(
            data: SliderThemeData(
              //Circle
              thumbColor: Color(0xFF1100D8),

              //track
              activeTrackColor: Colors.grey,
              inactiveTrackColor: Colors.black,

              //off dots
              activeTickMarkColor: Colors.transparent,
              inactiveTickMarkColor: Colors.transparent,
            ),
            child: Stack(
              children: [
                RangeSlider(
                  values: values,
                  min: 0,
                  max: 100,
                  divisions: 100,
                  labels: RangeLabels(
                    values.start.round().toString(),
                    values.end.round().toString(),
                  ),
                  onChanged: (newValue) {
                    setState(() {
                      if (newValue.end >= 0 && newValue.end <= 100) {
                        values = newValue;
                      }
                    });
                  },
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 5, right: 5, top: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        width: 40,
                        height: 40,
                        child: Center(
                          child: Text(
                            values.start.round().toString(),
                            style: TextStyle(
                              fontSize: 15,
                              color: Color(0xFF595085),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: 40,
                        height: 40,
                        child: Center(
                          child: Text(
                            values.end.round().toString(),
                            style: TextStyle(
                              fontSize: 15,
                              color: Color(0xFF595085),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}