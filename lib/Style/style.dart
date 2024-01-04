import 'package:flutter/material.dart';

const ColorRed = Color.fromRGBO(231, 28, 36, 1);
const ColorGreen = Color.fromRGBO(33, 191, 115, 1);
const ColorWhite = Color.fromRGBO(255, 255, 255, 1);
const ColorDarkBlue = Color.fromRGBO(44, 62, 80, 1);

InputDecoration AppInputDecoration(label) {
  return InputDecoration(
      focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: ColorGreen, width: 1)),
      fillColor: ColorWhite,
      filled: true,
      contentPadding: EdgeInsets.fromLTRB(20, 10, 10, 20),
      enabledBorder: const OutlineInputBorder(
          borderSide: const BorderSide(color: ColorWhite, width: 0)),
      border: OutlineInputBorder(),
      labelText: label);
}