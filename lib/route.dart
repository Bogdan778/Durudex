

import 'package:durudex_mobile/screens/auth/first_screen.dart';
import 'package:durudex_mobile/screens/auth/sign_in_screen.dart';
import 'package:durudex_mobile/screens/auth/sign_up_screen.dart';

import 'package:flutter/material.dart';

const String first_screen = 'firstScreen';
const String sign_in_screen = 'SignIn';
const String sign_up_screen = 'SignUp';

Route<dynamic> controller(RouteSettings settings) {
  switch (settings.name) {
    case first_screen:
      return MaterialPageRoute(builder: (context) => const FirstScreen());
    case sign_in_screen:
      return MaterialPageRoute(builder: (context) => const SignInScreen());
    case sign_up_screen:
      return MaterialPageRoute(builder: (context) => const SignUpWidget());
    default:
      throw ("this route doesn't exist");
  }
}