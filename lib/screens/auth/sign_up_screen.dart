import 'package:durudex_mobile/widgets/appbar.dart';
import 'package:durudex_mobile/constans.dart';
import 'package:flutter/material.dart';

class SignUpWidget extends StatefulWidget {
  const SignUpWidget({Key? key}) : super(key: key);

  @override
  State<SignUpWidget> createState() => _SignUpWidgetState();
}

class _SignUpWidgetState extends State<SignUpWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(50.0),
        child: AppBarWidget(),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                  height: 189,
                  child: Center(
                      child: Text(
                    'Sign Up',
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
                height: 30,
              ),
              const Text(
                'Email',
                style: textStyle,
              ),
              const SizedBox(
                height: 5,
              ),
              TextField(
                decoration: textFieldDecoration,
              ),
              const SizedBox(
                height: 192,
              ),
              SizedBox(
                width: 323,
                height: 73,
                child: ElevatedButton(
                    style: buttonStyle,
                    onPressed: () {},
                    child: const Text(
                      'Sign Up',
                      style: TextStyle(fontWeight: FontWeight.w700, fontSize: 27),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
