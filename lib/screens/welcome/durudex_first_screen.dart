import 'package:durudex_mobile/screens/sign%20in/sign_in_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../theme/theme_model.dart';
import '../../utils/constans.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}



class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ThemeModel themeNotifier, child) {
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
                    themeNotifier.isDark
                        ? themeNotifier.isDark = false
                        : themeNotifier.isDark = true;
                  },
                ),
                Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
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
                          style: buttonStyle,
                          onPressed: () {},
                          child: const Text('Sign Up',
                              style: TextStyle(
                                  fontWeight: FontWeight.w700, fontSize: 27)),
                        ),
                      ),
                      const SizedBox(height: 30),
                      SizedBox(
                        width: 323,
                        height: 73,
                        child: ElevatedButton(
                          style: buttonStyle,
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const SignInScreen()),
                            );
                          },
                          child: const Text('Sign In',
                              style: TextStyle(
                                  fontWeight: FontWeight.w700, fontSize: 27)),
                        ),
                      )
                    ])
              ],
            ),
          )),
        );
      },
    );
  }
}
