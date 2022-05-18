import 'dart:async';

import 'package:flutter/material.dart';
import '../constants.dart';
import './input_container.dart';

// class RoundedPasswordInput extends StatelessWidget {
//   const RoundedPasswordInput({Key? key, required this.hint}) : super(key: key);
//
//   final String hint;
//
//   @override
//   Widget build(BuildContext context) {
//     return InputContainer(
//         child: TextField(
//       cursorColor: kPrimaryColor,
//       obscureText: true,
//       decoration: InputDecoration(
//           icon: const Icon(Icons.lock, color: kPrimaryColor),
//           hintText: hint,
//           border: InputBorder.none),
//
//     ));
//   }
// }

class RoundedPasswordInput extends StatefulWidget {
  final String hint;

  const RoundedPasswordInput({Key? key, required this.hint}) : super(key: key);

  @override
  State<RoundedPasswordInput> createState() => _RoundedPasswordInput();
}

class _RoundedPasswordInput extends State<RoundedPasswordInput> {
  bool _isObscure = true;

  late final String hint;

  @override
  Widget build(BuildContext context) {
    return InputContainer(
      child: TextField(
        cursorColor: kPrimaryColor,
        obscureText: _isObscure,
        decoration: InputDecoration(
          border: InputBorder.none,
          icon: const Icon(Icons.lock, color: kPrimaryColor),
          hintText: 'password',
          suffixIcon: IconButton(
            icon: Icon(
              _isObscure ? Icons.visibility_off : Icons.visibility,
            ),
            onPressed: () {
              setState(() {
                _isObscure = !_isObscure;
              });

              setState(() {
                _isObscure;
              });
            },
          ),
        ),
      ),
    );
  }
}
