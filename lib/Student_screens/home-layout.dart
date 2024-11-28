import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';
import 'package:educita/Login_Screens/login%20screen.dart';
import 'package:educita/Student_screens/home.dart';
import 'package:educita/Student_screens/matrial.dart';
import 'package:educita/Student_screens/profile_screen.dart';
import 'package:educita/Student_screens/profile_screens_into/tasks.dart';
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
  const Profiles(),
];
int currentIndex = 0;

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        // Show the confirmation dialog
        final shouldExit = await showExitConfirmationDialog(context);
        return shouldExit ?? false; // Exit the app if confirmed
      },
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text(
            'Eduktia',
            style: TextStyle(
              color: Colors.white,
              fontSize: 23,
              fontWeight: FontWeight.bold,
            ),
          ),
          automaticallyImplyLeading: true,
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              const DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child: Center(
                  child: Text(
                    'Menu',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                    ),
                  ),
                ),
              ),
              ListTile(
                leading: const Icon(Icons.person),
                title: const Text('Profile'),
                onTap: () {
                  Navigator.pop(context); // Close the drawer
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Profiles(),
                    ),
                  );
                },
              ),
              ListTile(
                leading: const Icon(Icons.logout),
                title: const Text('Logout'),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (context) {
                        return const Login_Screen();
                      },
                    ),
                  );
                },
              ),
            ],
          ),
        ),
        body: screens[currentIndex],
        bottomNavigationBar: CurvedNavigationBar(
          items: const [
            CurvedNavigationBarItem(
              child: Icon(CupertinoIcons.home),
              label: 'Home',
            ),
            CurvedNavigationBarItem(
              child: Icon(Icons.subject),
              label: 'Matrials',
            ),
            CurvedNavigationBarItem(
              child: Icon(Icons.task_outlined),
              label: 'Tasks',
            ),
          ],
          index: currentIndex,
          onTap: (index) {
            setState(() {
              currentIndex = index;
            });
          },
        ),
      ),
    );
  }

  // Function to show the exit confirmation dialog
  Future<bool?> showExitConfirmationDialog(BuildContext context) {
    return showDialog<bool>(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Exit App'),
          content: const Text('Are you sure you want to exit the app?'),
          actions: [
            TextButton(
              onPressed: () =>
                  Navigator.of(context).pop(false), // Stay in the app
              child: const Text('Cancel'),
            ),
            TextButton(
              onPressed: () => Navigator.of(context).pop(true), // Exit the app
              child: const Text('Exit'),
            ),
          ],
        );
      },
    );
  }
}
