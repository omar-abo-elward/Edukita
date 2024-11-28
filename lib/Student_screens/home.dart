import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage("assets/Blue wallpaper background.jpg"))),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // CircularPercentIndicator at the top
              Center(
                child: CircularPercentIndicator(
                  radius: 100.0,
                  lineWidth: 14.0,
                  percent: 0.75,
                  header: const Text(
                    "Student Level",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  center: const Icon(
                    Icons.task_alt_outlined,
                    size: 50.0,
                    color: Colors.blue,
                  ),
                  backgroundColor: Colors.blueGrey,
                  progressColor: Colors.blue,
                ),
              ),

              const SizedBox(
                  height:
                      20), // Space between CircularPercentIndicator and ListView

              // Text for tasks
              const Text('Tasks',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),

              // Wrap the ListView with shrinkWrap to avoid unnecessary space
              Expanded(
                child: ListView.separated(
                  itemBuilder: (context, index) => BUILDITEMTASKS(context),
                  itemCount: 5,
                  separatorBuilder: (context, index) => const SizedBox(
                    height: 10, // Adjust this to provide spacing between items
                    width: double.infinity,
                  ),
                  shrinkWrap:
                      true, // Ensures ListView only takes as much space as it needs
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget BUILDITEMTASKS(context) => Dismissible(
      key: const Key('dismiss'),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Row(
              children: [
                const CircleAvatar(
                  backgroundColor: Colors.blue,
                  radius: 45.0,
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 10.0),
                    child: Text(
                      '2024/8/1',
                      style: TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                const SizedBox(width: 20.0),
                const Column(
                  children: [
                    Text(
                      'exam',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 20.0),
                    ),
                    Text(
                      '5:30',
                      style: TextStyle(fontSize: 20.0, color: Colors.grey),
                    ),
                  ],
                ),
                const SizedBox(width: 10.0),
                IconButton(
                  onPressed: () {
                    // AppCubit.get(context).updatedatabase(status: 'done', id: model['id']);
                  },
                  icon: const Icon(Icons.check_box),
                  color: Colors.green,
                ),
                const SizedBox(width: 10),
                IconButton(
                  onPressed: () {
                    // AppCubit.get(context).updatedatabase(status: 'archive', id: model['id']);
                  },
                  icon: const Icon(Icons.archive),
                  color: Colors.grey,
                ),
              ],
            ),
          ],
        ),
      ),
      onDismissed: (direction) {
        // AppCubit.get(context).deletedatabase(id: model['id']);
      },
    );
