import 'package:durudex_mobile/utils/constans.dart';
import 'package:durudex_mobile/utils/password_field.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      resizeToAvoidBottomInset: false,
      
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(50.0),
        child: AppBar(
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
        ),
      ),
      
      body: const LogoWidget(),
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
                    style: TextStyle(
                      fontSize: 40,
                      color: Color(0xff9104FF),
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                )),
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
          PasswordField(),
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
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700,),
          ))
        ],
      ),
    );
  }
  
  
  }


