import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';
import 'package:educita/home.dart';
import 'package:educita/matrial.dart';
import 'package:educita/profile.dart';
import 'package:educita/tasks.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

List screens = [
  const Home(),
  const MaterialScreen(),
  const Tasks(),
  const Profile(),
];
int currentIndex = 0;

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        // title: Image.asset('assets/splashEdukita.png',width: 140,height: 60,),
        title: const Text(
          'Eduktia',
          style: TextStyle(
            color: Colors.white,
            fontSize: 23,
            fontWeight: FontWeight.bold,

          ),
        ),
        automaticallyImplyLeading: false,
      ),
      body: screens[currentIndex],
      bottomNavigationBar: CurvedNavigationBar(
        items: const [
          CurvedNavigationBarItem(
            child: Icon(CupertinoIcons.home),
            label: 'Home',
          ),
          CurvedNavigationBarItem(
            child: Icon(
              Icons.subject,
            ),
            label: 'Matrials',
          ),
          CurvedNavigationBarItem(
            child: Icon(
              Icons.task_outlined,
            ),
            label: 'Tasks',
          ),
          CurvedNavigationBarItem(
            child: Icon(CupertinoIcons.person),
            label: 'Profile',
          ),
        ],
        index: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
      ),
    );
  }
}
