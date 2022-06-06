import 'package:flutter/material.dart';


class AppBarWidget extends StatelessWidget {
  const AppBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      leading: IconButton(
        icon: const Icon(
          Icons.arrow_back_ios_new_sharp,
        ),
        onPressed: () {
          Navigator.pop(context);
        },
        iconSize: 35,
        color: const Color(0xff9104FF),
      ),
      elevation: 0,
      backgroundColor: Colors.transparent,
    ),);
  }
}