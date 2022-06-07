import 'package:durudex_mobile/widgets/appbar.dart';
import 'package:durudex_mobile/constant/constans.dart';
import 'package:durudex_mobile/widgets/password_field.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50.0),
        child: AppBarWidget(),
      ),
      body: LogoWidget(),
    );
  }
}

class LogoWidget extends StatelessWidget {
  const LogoWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            SizedBox(
                height: (189),
                child: Center(
                    child: Text(
                  'Welcome',
                  style: logoTextStyle,
                ))),
            SizedBox(height: 10),
            _Form(),
          ],
        ),
      ),
    );
  }
}

class _Form extends StatefulWidget {
  const _Form({Key? key}) : super(key: key);

  @override
  State<_Form> createState() => __FormState();
}

class __FormState extends State<_Form> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
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
            'Password',
            style: textStyle,
          ),
          const SizedBox(
            height: 5,
          ),
          const PasswordField(),
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
                  'Sign In',
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 27),
                )),
          ),
          const SizedBox(
            height: 20,
          ),
          const Center(
              child: Text(
            'Forgot password?',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w700,
              color: Color(0xff4F506A),
            ),
          ))
        ],
      ),
    );
  }
}
