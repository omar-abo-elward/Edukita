import 'package:flutter/material.dart';

class ScheduleScreen extends StatelessWidget {
  const ScheduleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Schedule",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: const Color.fromRGBO(9, 97, 245, 1),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white70,
          ),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/Blue wallpaper background.jpg',
              fit: BoxFit.cover,
            ),
          ),
          ListView.builder(
            itemCount: 7,
            itemBuilder: (context, index) {
              return Card(
                borderOnForeground: false,
                margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  child: ListTile(
                    title: Text("Day ${index + 1}"),
                    subtitle: Text("Task for Day ${index + 1}"),
                    trailing: const Icon(Icons.arrow_forward_ios),
                    onTap: () {},
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
