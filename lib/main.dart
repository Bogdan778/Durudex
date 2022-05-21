import 'package:durudex_mobile/screens/welcome/durudex_first_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.leanBack);
    return const MaterialApp(
      title: 'Durudex',
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
      home: FirstScreen(),
    );
  }
}
