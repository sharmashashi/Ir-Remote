import 'package:dhremote/custom_colors.dart';
import 'package:dhremote/screens/remote/buttongroups/center_control.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ir_sensor_plugin/ir_sensor_plugin.dart';

class Remote extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: CustomColor.background,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [_top(size), centerControl(size), SizedBox()],
      ),
    );
  }

  Widget _top(Size size) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          button(
              iconData: FontAwesomeIcons.powerOff,
              buttonName: "power",
              color: Colors.red),
          button(
              iconData: FontAwesomeIcons.volumeMute,
              buttonName: "mute",
              color: Colors.blue)
        ],
      ),
    );
  }
}
