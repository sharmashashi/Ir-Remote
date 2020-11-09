import 'package:dhremote/custom_colors.dart';
import 'package:flutter/material.dart';

List<BoxShadow> majorShadow = [
  BoxShadow(
    offset: Offset(5,5),
    blurRadius: 5,
    spreadRadius: 1,
    color: CustomColor.bottomRight
  ),
   BoxShadow(
    offset: Offset(-5,-5),
    blurRadius: 5,
    spreadRadius: 1,
    color: CustomColor.topLeft
    
  )
];
