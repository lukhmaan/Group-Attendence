import 'package:flutter/material.dart';
import '../route/route.dart' as route;

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Smart Group Attendance')),
      ),
      drawer: Drawer(
        elevation: 20.0,
        child: Column(
          children: const <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text(
                'Ameer',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    // fontSize: 12.0,
                    color: Colors.white),
              ),
              accountEmail: Text('Ameer@nanosoftsolutions.in'),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
                child: Text('Profile'),
              ),
            ),
            ListTile(
              title: Text('Daily Attendance'),
              leading: Icon(Icons.punch_clock_rounded),
            ),
            Divider(height: 0.1),
            ListTile(
                title: Text('Weekly Attendance'),
                leading: Icon(Icons.calendar_month_rounded)),
            Divider(height: 0.1),
            ListTile(
                title: Text('Logout'),
                leading: Icon(Icons.power_settings_new_rounded)),
            Divider(height: 0.1),
          ],
        ),
      ),
      persistentFooterButtons: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              width: 180.0,
              height: 70.0,
              child: FlatButton.icon(
                color: Colors.blue,
                splashColor: Colors.white,
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                onPressed: () => Navigator.pushNamed(context, route.dailyatt),
                icon: const Icon(
                  Icons.punch_clock,
                  size: 24.0,
                  color: Colors.white,
                ),
                label: const Text(
                  'Daily Attendance',
                  style: TextStyle(
                      // fontWeight: FontWeight.bold,
                      // fontSize: 12.0,
                      color: Colors.white),
                ),
              ),
            ),
            SizedBox(
              width: 180.0,
              height: 70.0,
              child: FlatButton.icon(
                color: Colors.blue,
                splashColor: Colors.white,
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                onPressed: () => Navigator.pushNamed(context, route.weeklyatt),
                icon: const Icon(
                  Icons.calendar_month_rounded,
                  size: 24.0,
                  color: Colors.white,
                ),
                label: const Text(
                  'Weekly Attendance',
                  style: TextStyle(
                      fontSize: 12.0,
                      fontFamily: 'Railway',
                      color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        items: const [
          BottomNavigationBarItem(label: 'Home', icon: Icon(Icons.home)),
          BottomNavigationBarItem(label: 'Time Sheet', icon: Icon(Icons.timer)),
        ],
      ),
    );
  }
}
