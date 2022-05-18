import 'package:flutter/material.dart';
import '../route/route.dart' as route;

class Entity extends StatelessWidget {
  const Entity({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login Page'),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text("Login"),
          onPressed: () => Navigator.pushNamed(context, route.homePage),
        ),
      ),
    );
  }
}
