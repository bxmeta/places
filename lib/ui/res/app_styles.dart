import 'package:flutter/material.dart';


TextStyle _text = const TextStyle(
  fontStyle: FontStyle.normal,
);


final TextStyle appBarText = _text.copyWith(fontSize: 32, fontWeight: FontWeight.bold);
final TextStyle appBarTextVisited = _text.copyWith(fontSize: 18, fontWeight: FontWeight.w500);
final TextStyle cardTitle = _text.copyWith(fontSize: 16, fontWeight: FontWeight.w500);
final TextStyle cardDescription = _text.copyWith(fontSize: 14, fontWeight: FontWeight.w500);
final TextStyle cardCategory = _text.copyWith(fontSize: 14, fontWeight: FontWeight.bold);
final TextStyle cardTime = _text.copyWith(fontSize: 14, fontWeight: FontWeight.w400);
final TextStyle cardInfo = _text.copyWith(fontSize: 14, fontWeight: FontWeight.w400);
final TextStyle tabLabel = _text.copyWith(fontSize: 14, fontWeight: FontWeight.bold);
