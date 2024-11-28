import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';
import 'package:educita/Login_Screens/login%20screen.dart';
import 'package:educita/Parent_screens/Parents_son\'s_grades.dart';
import 'package:educita/Parent_screens/parents%20Home.dart';
import 'package:educita/Student_screens/profile_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TeacherLayout extends StatefulWidget {
  const TeacherLayout({super.key});

  @override
  State<TeacherLayout> createState() => _TeacherLayoutState();
}

List screens = [
  const parents_Home(),
  const Grades(),
];
int currentIndex = 0;

class _TeacherLayoutState extends State<TeacherLayout> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        // Show confirmation dialog
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
          automaticallyImplyLeading: false,
          // Enables the hamburger menu button.
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
                  // Navigate to the Profile screen
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            const Profiles()), // Replace `ProfileScreen` with your Profile screen widget
                  );
                },
              ),
              // Logout Option
              ListTile(
                leading: const Icon(Icons.logout),
                title: const Text('Logout'),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.of(context)
                      .pushReplacement(MaterialPageRoute(builder: (context) {
                    return const Login_Screen();
                  }));
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
              child: Icon(Icons.grading),
              label: 'Grades',
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
