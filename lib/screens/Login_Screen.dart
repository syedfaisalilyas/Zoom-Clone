import 'package:flutter/material.dart';
import 'package:zoom_clone/resources/auth_methods.dart';
import 'package:zoom_clone/widgets/custom_button.dart';

class Login_Screen extends StatefulWidget {
  const Login_Screen({super.key});

  @override
  State<Login_Screen> createState() => _Login_ScreenState();
}

class _Login_ScreenState extends State<Login_Screen> {
  final AuthMehods _authMehods = AuthMehods();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Start or join a meeting',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          Padding(
            padding: const EdgeInsets.all(38.0),
            child: Image.asset('assets/images/onboarding.jpg'),
          ),
          custom_Button(
              text: 'Google Sign In',
              onpressed: () async {
                bool res = await _authMehods.sigininwithGoogle(context);
                if (res) {
                  Navigator.pushNamed(context, 'home');
                }
              })
        ],
      ),
    );
  }
}
