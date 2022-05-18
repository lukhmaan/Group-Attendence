import 'package:flutter/material.dart';
// import '../route/route.dart' as route;
import 'package:dropdown_search/dropdown_search.dart';

// class RegisterPage extends StatelessWidget {
//   const RegisterPage({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Daily Attendance'),
//       ),
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
//             child: TextFormField(
//               decoration: const InputDecoration(
//                 border: UnderlineInputBorder(),
//                 labelText: 'Enter URL',
//               ),
//             ),
//           ),
//           ElevatedButton(
//             child: const Text("Register"),
//             onPressed: () => Navigator.pushNamed(context, route.loginPage),
//           ),
//         ],
//       ),
//     );
//   }
// }

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Daily Attendance'),
      ),
      body: const Center(
        child: MyStatefulWidget(),
      ),
    );
  }
}

enum SingingCharacter { lafayette, jefferson }

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  SingingCharacter? _character = SingingCharacter.lafayette;
  String dropdownValue = 'One';

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: Row(
                children: [
                  Radio(
                    value: SingingCharacter.lafayette,
                    groupValue: _character,
                    onChanged: (SingingCharacter? value) {
                      setState(() {
                        _character = value;
                      });
                    },
                  ),
                  const Expanded(
                    child: Text('Dedicated'),
                  )
                ],
              ),
              flex: 1,
            ),
            Expanded(
              child: Row(
                children: [
                  Radio(
                    value: SingingCharacter.jefferson,
                    groupValue: _character,
                    onChanged: (SingingCharacter? value) {
                      setState(() {
                        _character = value;
                      });
                    },
                  ),
                  const Expanded(child: Text('Shared'))
                ],
              ),
              flex: 1,
            ),
          ],
        ),
        Padding(
          // padding: const EdgeInsets.all(10.0),
          padding: const EdgeInsets.only(
              bottom: 50.0, top: 10.0, left: 10.0, right: 10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              DropdownSearch<String>(
                //mode of dropdown
                mode: Mode.BOTTOM_SHEET,
                //to show search box
                showSearchBox: true,
                //list of dropdown items
                dropdownSearchDecoration: const InputDecoration(
                  labelText: 'Select Contract',
                ),
                items: const [
                  "ARABIAN JERUSALEM FZE - MEP SERVICES",
                  "AL ZAIN REAL ESTATE - ALI RAHMA ABDULLA OWAIS - MEP SERVICES",
                  "MR SULTAN AHMAD MOHAMMED LOOTAH",
                  "ALI ABDULLAH MOHAMMED AL SHIRAWI R3 -MEP/",
                  "BITS PILANI FZ LLC - MEP",
                  "ALAWI REAL ESTATE - MEP"
                ],
                onChanged: print,
                //show selected item
                // selectedItem: "India",
              ),
              DropdownSearch<String>(
                //mode of dropdown
                mode: Mode.BOTTOM_SHEET,
                //to show search box
                showSearchBox: true,
                //list of dropdown items
                dropdownSearchDecoration: const InputDecoration(
                  labelText: 'Select Location',
                ),

                items: const [
                  "Al Warqa",
                  "Ajman",
                  "Bur Dubai",
                  "Al Qusaus",
                  "Lootah building - Plot - 1240139",
                  "Sharja",
                  "Dubai Silicon Oasis",
                  "Liwan"
                ],
                onChanged: print,
                //show selected item
                // selectedItem: "India",
              ),
              DropdownSearch<String>(
                //mode of dropdown
                mode: Mode.BOTTOM_SHEET,
                //to show search box
                showSearchBox: true,
                //list of dropdown items
                dropdownSearchDecoration: const InputDecoration(
                  labelText: 'Select Shift',
                ),

                items: const [
                  "08 TO 19 Shift",
                  "General Shift",
                ],
                onChanged: print,
                //show selected item
                // selectedItem: "India",
              ),
              DropdownSearch<String>(
                //mode of dropdown
                mode: Mode.BOTTOM_SHEET,
                //to show search box
                showSearchBox: true,
                //list of dropdown items
                dropdownSearchDecoration: const InputDecoration(
                  labelText: 'Select Date',
                ),

                items: const [
                  "Today",
                  "Yesterday",
                ],
                onChanged: print,
                //show selected item
                // selectedItem: "India",
              ),
              Column(
                children: [
                  OutlinedButton.icon(
                    onPressed: () {
                      debugPrint('Received click');
                    },
                    icon: const Icon(
                      Icons.show_chart_sharp,
                      size: 24.0,
                    ),
                    label: const Text('Show Employee List'),
                  ),
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}
