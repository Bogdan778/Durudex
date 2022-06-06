import 'package:durudex_mobile/widgets/appbar.dart';
import 'package:durudex_mobile/constant/constans.dart';
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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
              height: 189,
              child: Center(
                  child: Text(
                'Sign Up',
                style: logoTextStyle,
              )))
        ],
      ),
    );
  }
}
