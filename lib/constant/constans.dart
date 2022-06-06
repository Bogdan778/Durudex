import 'package:flutter/material.dart';

const textStyle = TextStyle(
    fontSize: 25, fontWeight: FontWeight.bold);

final textFieldDecoration = InputDecoration(
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(16.0),
      borderSide: const BorderSide(color: Color(0xff9104FF), width: 1.6),
    ),
    enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(16.0),
        borderSide: const BorderSide(
            color: Color(0xff9104FF), width: 1.6, style: BorderStyle.solid)),
    contentPadding: const EdgeInsets.all(20),
    hintText: 'Placeholder',
    );


final ButtonStyle buttonStyle = ElevatedButton.styleFrom(
  primary: const Color(0xFF9104FF),
  
  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(28)),
);

final logoTextStyle = TextStyle(fontSize: 40,
            color: Color(0xff9104FF),
            fontWeight: FontWeight.w700,);