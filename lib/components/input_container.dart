import 'package:flutter/material.dart';
import '../constants.dart';

class InputContainer extends StatelessWidget {
  const InputContainer({
    Key? key,
    required this.child,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      width: size.width * 0.8,
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: kPrimaryColor,
          ),
        ),
      ),
      child: child,
    );
  }
}
