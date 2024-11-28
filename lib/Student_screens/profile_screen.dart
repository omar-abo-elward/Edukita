import 'package:educita/Login_Screens/login%20screen.dart';
import 'package:educita/Student_screens/profile_screens_into/schadual_screen.dart';
import 'package:flutter/material.dart';

class Profiles extends StatelessWidget {
  const Profiles({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Profile",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.blue,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white70,
          ),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage("assets/Blue wallpaper background.jpg"))),
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                child: Column(
                  children: [
                    // Profile Section
                    CircleAvatar(
                      radius: 50,
                      backgroundColor: Colors.grey[300],
                      child: Icon(
                        Icons.person,
                        size: 50,
                        color: Colors.grey[700],
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "James S. Hernandez",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    const Text(
                      "hernandez.redial@gmail.ac.in",
                      style: TextStyle(color: Colors.grey),
                    ),
                    const SizedBox(height: 20),
                    // Options Section
                    Container(
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.9),
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.shade200,
                            blurRadius: 10,
                            spreadRadius: 5,
                          ),
                        ],
                      ),
                      child: Column(
                        children: [
                          _buildOptionTile(Icons.edit, "Edit Profile",
                              onTap: () {}),
                          _buildOptionTile(
                            Icons.schedule_outlined,
                            "Schedule",
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const ScheduleScreen()));
                            },
                          ),
                          _buildOptionTile(
                              Icons.description, "Terms & Conditions",
                              onTap: () {}),
                          _buildOptionTile(Icons.help, "Help Center",
                              onTap: () {}),
                          _buildOptionTile(Icons.people, "Invite Friends",
                              onTap: () {}),
                          _buildOptionTile(Icons.phone_outlined, "Contact us",
                              onTap: () {}),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 80,
                    ),
                    ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(
                            vertical: 12, horizontal: 24),
                        backgroundColor: Colors.blue,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      icon: const Icon(
                        Icons.logout,
                        color: Colors.white70,
                      ),
                      label: const Text(
                        "Logout",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                        Navigator.of(context).pushReplacement(
                            MaterialPageRoute(builder: (context) {
                          return const Login_Screen();
                        }));
                      },
                    ),
                    const SizedBox(height: 13),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildOptionTile(IconData icon, String title,
      {Widget? trailing, VoidCallback? onTap}) {
    return ListTile(
      leading: Icon(icon, color: Colors.grey),
      title: Text(title),
      trailing: trailing ?? const Icon(Icons.arrow_forward_ios, size: 16),
      onTap: onTap,
    );
  }
}
