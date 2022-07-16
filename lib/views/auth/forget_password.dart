import 'package:durudex_mobile/widgets/appbar.dart';
import 'package:durudex_mobile/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:durudex_mobile/constans.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({Key? key}) : super(key: key);

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(50.0),
          child: AppBarWidget(),
        ),
        body: SingleChildScrollView(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const SizedBox(
                height: (189),
                child: Center(
                    child: Text(
                  'Forget Password',
                  style: logoTextStyle,
                ))),
            const SizedBox(height: 10),
            const Text(
              'Username',
              style: textStyle,
            ),
            const SizedBox(
              height: 5,
            ),
            TextField(
              decoration: textFieldDecoration,
            ),
            const SizedBox(
                height: 320,
              ),
            const ButtonWidget(),
          ]),
        )));
  }
}
