import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:durudex_mobile/constans.dart';

class ButtonWidget extends StatefulWidget {
  const ButtonWidget({Key? key}) : super(key: key);

  @override
  State<ButtonWidget> createState() => _ButtonWidgetState();
}

class _ButtonWidgetState extends State<ButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
                width: 323,
                height: 73,
                child: ElevatedButton(
                    style: buttonStyle,
                    onPressed: () {},
                    child: const Text(
                      'Next',
                      style: TextStyle(fontWeight: FontWeight.w700, fontSize: 27),
                    )),
              );
  }
}