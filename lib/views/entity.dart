import 'package:flutter/material.dart';
import '../components/rounded_input.dart';
import '../route/route.dart' as route;
import 'dart:async';

void main() {
  runApp(MaterialApp(
    title: 'Splash Screen',
    theme: ThemeData(
      primarySwatch: Colors.blue,
    ),
    home: const Splash(),
    debugShowCheckedModeBanner: false,
  ));
}

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 2),
        () => Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => const LoginPage())));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.grey[100],
        child: Image.asset('assets/images/splashimg.png'));
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage> {
  String dropdownValue = 'http';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //ROW 1
            children: [
              DropdownButton<String>(
                value: dropdownValue,
                icon: const Icon(Icons.arrow_circle_down),
                style: const TextStyle(color: Colors.black, fontSize: 20),
                dropdownColor: Colors.grey[100],
                borderRadius: BorderRadius.circular(20),
                onChanged: (String? newValue) {
                  setState(() {
                    dropdownValue = newValue!;
                  });
                },
                items: <String>['http', 'https']
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
              Container(
                margin: const EdgeInsets.all(20.0),
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
                width: 250,
                child: TextFormField(
                  decoration: const InputDecoration(
                    border: UnderlineInputBorder(),
                    labelText: 'Enter URL',
                  ),
                ),
                // const RoundedInput(
                //     icon: Icons.lock_open_outlined, hint: 'Enter URL'),
              ),
            ],
          ),
          Row(
              //ROW 2
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  child: const Text("Register"),
                  onPressed: () =>
                      Navigator.pushNamed(context, route.loginScreen),
                )
              ]),
        ]));
  }
}

// class _MyStatefulWidgetState extends State<MyStatefulWidget> {
//   String dropdownValue = 'One';
//
//   @override
//   Widget build(BuildContext context) {
//     return DropdownButton<String>(
//       value: dropdownValue,
//       onChanged: (String? newValue) {
//         setState(() {
//           dropdownValue = newValue!;
//         });
//       },
//       items: <String>['One', 'Two', 'Free', 'Four']
//           .map<DropdownMenuItem<String>>((String value) {
//         return DropdownMenuItem<String>(
//           value: value,
//           child: Text(value),
//         );
//       }).toList(),
//     );
//   }
// }
