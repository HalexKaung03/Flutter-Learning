import 'package:flutter/material.dart';
import 'package:flutter_course/sample_screen/home_screen.dart';
import 'package:flutter_course/sample_screen/notification_screen.dart';
import 'package:flutter_course/sample_screen/profile_screen.dart';

class Ex32NavigationRail extends StatefulWidget {
  const Ex32NavigationRail({super.key});

  @override
  State<Ex32NavigationRail> createState() => _Ex32NavigationRailState();
}

class _Ex32NavigationRailState extends State<Ex32NavigationRail> {
  int currentIndex = 0;

  final pages = [
    const HomeScreen(),
    const NotificationScreen(),
    const ProfileScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Navigation Rail'),
      ),
      body: Row(
        children: [
          NavigationRail(
            minWidth: 70,
            extended: false,
            selectedIndex: currentIndex,
            onDestinationSelected: (index) => {
              setState(() {
                currentIndex = index;
              })
            },
            destinations: const [
              NavigationRailDestination(
                icon: Icon(Icons.home),
                label: Text('Home'),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.notifications),
                label: Text('Notifications'),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.person),
                label: Text('Profile'),
              ),
            ],
          ),
          Expanded(child: pages[currentIndex])
        ],
      ),
    );
  }
}
