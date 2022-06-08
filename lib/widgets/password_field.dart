import 'package:flutter/material.dart';

class PasswordField extends StatefulWidget {
  const PasswordField({Key? key}) : super(key: key);

  @override
  State<PasswordField> createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  bool isHiddenPassword = true;
  bool click = true;
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16.0),
            borderSide: const BorderSide(color: Color(0xff9104FF), width: 1.6),
          ),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16.0),
              borderSide: const BorderSide(
                  color: Color(0xff9104FF),
                  width: 1.6,
                  style: BorderStyle.solid)),
          contentPadding: const EdgeInsets.all(20),
          hintText: 'Placeholder',
          suffixIcon: GestureDetector(
            onTap: () {
              _togglePasswordView();
              setState(() {
                click = !click;
              });
            },
            child: click
                ? Image.asset(
                    'assets/icons/eye.png',
                  )
                : Image.asset('assets/icons/eye-slashed.png'),
          )),
      obscureText: isHiddenPassword,
    );
  }

  void _togglePasswordView() {
    // if (isHiddenPassword == true) {
    //   isHiddenPassword = false;
    // } else {
    //   isHiddenPassword = true;
    // }
    isHiddenPassword = !isHiddenPassword;
    setState(() {});
  }
}
