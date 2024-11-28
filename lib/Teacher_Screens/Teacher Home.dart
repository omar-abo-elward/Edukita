import 'package:educita/Parent_screens/parents%20arabic.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class Teacher_Home extends StatelessWidget {
  const Teacher_Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage("assets/Blue wallpaper background.jpg"),
        )),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              //SizedBox(height: 5,),
              Lottie.asset("assets/parents home.json"),
              LinearPercentIndicator(
                animation: true,
                animationDuration: 1000,
                lineHeight: 10,
                percent: 0.8,
                progressColor: Colors.blue,
                backgroundColor: Colors.blue.shade100,
                barRadius: const Radius.circular(25),
                leading: const Text(
                  "student level is 80%",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.blue,
                  ),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              const Center(
                child: Text(
                  "Level in each subject",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                  ),
                ),
              ),
              const SizedBox(
                height: 5,
              ),

              LinearPercentIndicator(
                animation: true,
                animationDuration: 1000,
                lineHeight: 10,
                percent: 0.8,
                progressColor: Colors.blue,
                backgroundColor: Colors.blue.shade100,
                barRadius: const Radius.circular(25),
                leading: TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => arabic_grades()));
                  },
                  child: const Text(
                    "Arabic 80%",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.blue,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              LinearPercentIndicator(
                animation: true,
                animationDuration: 1000,
                lineHeight: 10,
                percent: 0.9,
                progressColor: Colors.blue,
                backgroundColor: Colors.blue.shade100,
                barRadius: const Radius.circular(25),
                leading: TextButton(
                  onPressed: () {},
                  child: const Text(
                    "English 90%",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.blue,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              LinearPercentIndicator(
                animation: true,
                animationDuration: 1000,
                lineHeight: 10,
                percent: 0.95,
                progressColor: Colors.blue,
                backgroundColor: Colors.blue.shade100,
                barRadius: const Radius.circular(25),
                leading: TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Math 95%",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.blue,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              LinearPercentIndicator(
                animation: true,
                animationDuration: 1000,
                lineHeight: 10,
                percent: 0.95,
                progressColor: Colors.blue,
                backgroundColor: Colors.blue.shade100,
                barRadius: const Radius.circular(25),
                leading: TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Attendance 95%",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.blue,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
