import 'package:dhremote/custom_colors.dart';
import 'package:dhremote/screens/remote/buttongroups/custom_shadow.dart';
import 'package:dhremote/screens/remote/remote_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ir_sensor_plugin/ir_sensor_plugin.dart';

Widget centerControl(Size size) {
  return Align(
      alignment: Alignment.center,
      child: Container(
        width: size.width * .6,
        height: size.width * .6,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            boxShadow: majorShadow,
            color: CustomColor.background),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            button(iconData: FontAwesomeIcons.arrowUp, buttonName: "chup"),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                button(
                    iconData: FontAwesomeIcons.volumeDown,
                    buttonName: "voldown"),
                button(
                    iconData: FontAwesomeIcons.checkCircle, buttonName: "ok"),
                button(
                    iconData: FontAwesomeIcons.volumeUp, buttonName: "volup"),
              ],
            ),
            button(iconData: FontAwesomeIcons.arrowDown, buttonName: "chdown"),
          ],
        ),
      ));
}

Widget button(
    {@required IconData iconData, @required String buttonName, Color color}) {
  return Container(
    alignment: Alignment.center,
    decoration: BoxDecoration(
        boxShadow: majorShadow,
        color: CustomColor.background,
        shape: BoxShape.circle),
    child: IconButton(
      color: color ?? Colors.deepPurple,
      splashColor: Colors.white,
      onPressed: () async {
        await HapticFeedback.heavyImpact();
        await IrSensorPlugin.transmitListInt(
            list: RemoteData.transmissionCode(buttonName));
      },
      icon: FaIcon(
        iconData,
        size: 30,
        // color: Colors.white54,
      ),
    ),
  );
}
