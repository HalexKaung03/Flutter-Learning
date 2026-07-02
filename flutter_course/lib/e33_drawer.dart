import 'package:flutter/material.dart';
import 'package:flutter_course/sample_screen/home_screen.dart';
import 'package:flutter_course/sample_screen/notification_screen.dart';
import 'package:flutter_course/sample_screen/profile_screen.dart';

class Ex33Drawer extends StatefulWidget {
  const Ex33Drawer({super.key});

  @override
  State<Ex33Drawer> createState() => _Ex33DrawerState();
}

class _Ex33DrawerState extends State<Ex33Drawer> {
  int currentIndex = 0;

  final pages = [
    const HomeScreen(),
    const NotificationScreen(),
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Drawer'),
      ),
      body: pages[currentIndex],
      // drawerScrimColor: Colors.red,
      onEndDrawerChanged: (open) => {debugPrint('is opened? $open')},
      endDrawer: Drawer(
        backgroundColor: Colors.purple[200],
        child: Column(
          children: [
            const DrawerHeader(
                child: ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.person),
              ),
              title: Text('User'),
            )),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: () {
                setState(() {
                  currentIndex = 0;
                  Navigator.of(context).pop();
                });
              },
            ),
            ListTile(
              leading: Icon(Icons.notifications),
              title: Text('Notifications'),
              onTap: () {
                setState(() {
                  currentIndex = 1;
                  Navigator.of(context).pop();
                });
              },
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Profile'),
              onTap: () {
                setState(() {
                  currentIndex = 2;
                  Navigator.of(context).pop();
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
