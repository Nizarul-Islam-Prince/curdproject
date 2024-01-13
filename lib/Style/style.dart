import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

const ColorRed = Color.fromRGBO(231, 28, 36, 1);
const ColorGreen = Color.fromRGBO(33, 191, 115, 1);
const ColorWhite = Color.fromRGBO(255, 255, 255, 1);
const ColorDarkBlue = Color.fromRGBO(44, 62, 80, 1);

ScreenBackground(context) {
  return SvgPicture.asset(
    'assets/images/background.svg',
    alignment: Alignment.center,
    width: MediaQuery.of(context).size.width,
    height: MediaQuery.of(context).size.height,
    fit: BoxFit.cover,
  );
}

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

DecoratedBox AppDropdownStyle(child) {
  return DecoratedBox(
    decoration: BoxDecoration(
        color: ColorWhite,
        border: Border.all(color: ColorWhite, width: 1),
        borderRadius: BorderRadius.circular(4)),
    child: Padding(
      padding: EdgeInsets.only(left: 30, right: 30),
      child: child,
    ),
  );
}

ButtonStyle AppButtonstyle() {
  return ElevatedButton.styleFrom(
      elevation: 1,
      padding: EdgeInsets.all(0),
      backgroundColor: Colors.transparent,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)));
}

Ink SuccessButtonChild(ButtonText) {
  return Ink(
    decoration: BoxDecoration(
      color: ColorGreen,
      borderRadius: BorderRadius.circular(6),
    ),
    child: Container(
      height: 45,
      alignment: Alignment.center,
      child: Text(
        ButtonText,
        style: TextStyle(fontWeight: FontWeight.w400, fontSize: 15),
      ),
    ),
  );
}
