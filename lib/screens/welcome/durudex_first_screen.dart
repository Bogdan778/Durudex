import 'package:flutter/material.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

final ButtonStyle style = ElevatedButton.styleFrom(
  primary: const Color(0xFF9104FF),
  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(28)),
);

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            const SizedBox(height: 30),
            GestureDetector(
              child: Container(
                height: 43,
                child: Image.asset(
                  'assets/icons/moon1.png',
                  color: const Color(0xFF9104FF),
                ),
              ),
              onTap: () {
                print('clicked');
              },
            ),
            Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
              const SizedBox(
                height: 180,
              ),
              Image.asset(
                'assets/durudex-logo-full.png',
                height: 100,
                color: const Color(0xFF9104FF),
              ),
              const SizedBox(
                height: 200,
              ),
              SizedBox(
                width: 323,
                height: 73,
                child: ElevatedButton(
                  style: style,
                  onPressed: () {},
                  child: const Text('Sign Up',
                      style:
                          TextStyle(fontWeight: FontWeight.w700, fontSize: 27)),
                ),
              ),
              const SizedBox(height: 30),
              SizedBox(
                width: 323,
                height: 73,
                child: ElevatedButton(
                  style: style,
                  onPressed: () {},
                  child: const Text('Sign In',
                      style:
                          TextStyle(fontWeight: FontWeight.w700, fontSize: 27)),
                ),
              )
            ])
          ],
        ),
      )),
    );
  }
}
