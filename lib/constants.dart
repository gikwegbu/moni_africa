// ignore_for_file: use_full_hex_values_for_flutter_colors

import 'package:flutter/material.dart';
import './size_config.dart';

const kPrimaryColor = Color(0xFFE6007E);
const kPrimaryLightColor = Color(0xFFe947a07);

const kAuthLinearGradient = LinearGradient(
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
  colors: [
    Colors.black,
    Colors.transparent,
    Color(0xFF140432),
    Color(0xFF140432)
  ],
  stops: [0, 0, 0.79, 1],
);

final Shader textLinearGradient = const LinearGradient(
  colors: <Color>[Color(0xffDA44bb), Color(0xff8921aa)],
).createShader(
  const Rect.fromLTWH(0.0, 0.0, 200.0, 70.0),
);

const kBgGrayColor = Color(0xFFf6f6f6);
const kSecondaryColor = Color(0xFF140432);
const kTextColor = Color(0xFF979797);

const kAnimationDuration = Duration(milliseconds: 200);

final headingStyle = TextStyle(
  fontSize: getProportionateScreenWidth(45),
  fontFamily: 'Muli',
  fontWeight: FontWeight.bold,
  color: Colors.black,
  height: 1.5,
);

// Form Error
final RegExp emailValidatorRegExp =
    RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
const String kEmailNullError = "Please Enter your email";
const String kInvalidEmailError = "Please Enter Valid Email";
const String kPassNullError = "Please Enter your password";
const String kConfirmPassNullError = "Please Confirm your password";
const String kShortPassError = "Password is too short";
const String kMatchPassError = "Passwords don't match";
const String kPhoneNumberNullError = "Please Enter your phone number";
const String kAddressNullError = "Please Enter your address";
