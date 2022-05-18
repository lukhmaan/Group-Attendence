import 'package:flutter/material.dart';
import '../../../components/checkbox.dart';
import '../../../components/rounded_button.dart';
import '../../../components/rounded_input.dart';
import '../../../components/rounded_password_input.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    Key? key,
    required this.isLogin,
    required this.animationDuration,
    required this.size,
    required this.defaultLoginSize,
  }) : super(key: key);

  final bool isLogin;
  final Duration animationDuration;
  final Size size;
  final double defaultLoginSize;

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      opacity: isLogin ? 1.0 : 0.0,
      duration: animationDuration * 4,
      child: Align(
        alignment: Alignment.center,
        child: SizedBox(
          width: size.width,
          height: defaultLoginSize,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                SizedBox(height: 50),
                CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('assets/images/splashimg.png'),
                ),
                SizedBox(height: 10),
                Text(
                  'V 3.0(R 1.0.4)',
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: Colors.black),
                ),
                RoundedInput(icon: Icons.person, hint: 'Username'),
                RoundedPasswordInput(hint: 'Password'),
                CheckBox(),
                SizedBox(height: 10),
                RoundedButton(title: 'LOGIN'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
