import 'package:flutter/material.dart';
import 'package:flutter_course/sample_screen/home_screen.dart';
import 'package:flutter_course/sample_screen/notification_screen.dart';
import 'package:flutter_course/sample_screen/profile_screen.dart';

class Ex48Tab extends StatefulWidget {
  const Ex48Tab({super.key});

  @override
  State<Ex48Tab> createState() => _Ex48TabState();
}

class _Ex48TabState extends State<Ex48Tab> {
  // int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Tab'),
          bottom: TabBar(
            // onTap: (index) {
            //   setState(() {
            //     currentIndex = index;
            //   });
            // },
            tabs: [
              Tab(
                text: 'Home',
                icon: Icon(Icons.home),
              ),
              Tab(
                text: 'Notification',
                icon: Icon(Icons.notifications),
              ),
              Tab(
                text: 'Profile',
                icon: Icon(Icons.person),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            HomeScreen(),
            NotificationScreen(),
            ProfileScreen(),
          ],
        ),
      ),
    );
  }
}
