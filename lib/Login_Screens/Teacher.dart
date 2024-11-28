import 'package:educita/Teacher_Screens/teacher_Layout.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Teacher extends StatelessWidget {
  const Teacher({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          // Ensure the container takes up the full screen
          height: MediaQuery.of(context)
              .size
              .height, // This ensures the container takes full height
          decoration: const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit
                  .cover, // Ensures the background image covers the whole container
              image: AssetImage("assets/Blue wallpaper background.jpg"),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 50,
                ),
                Center(child: Lottie.asset("assets/Teacher animation.json")),
                //Image.asset("assets/student.png",height: 150,width: 150,)),
                const SizedBox(
                  height: 20,
                ),
                const Center(
                  child: Column(
                    children: [
                      Text(
                        "Hi,Teacher!",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.blueAccent,
                        ),
                      ),
                      Text(
                        "Welcome Back!",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w300,
                          color: Colors.blueAccent,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),

                const Text(
                  "E-mail",
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.blue,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  //controller: emailController,
                  style: const TextStyle(color: Colors.white),

                  decoration: InputDecoration(
                      fillColor: Colors.lightBlue,
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: Colors.transparent),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: Colors.transparent),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: Colors.transparent),
                      )),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Paswored",
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.blue,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  //controller:  pasworedController,
                  style: const TextStyle(color: Colors.white),

                  decoration: InputDecoration(
                      fillColor: Colors.lightBlue,
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: Colors.transparent),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: Colors.transparent),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: Colors.transparent),
                      )),
                ),
                const SizedBox(
                  height: 30,
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).pushAndRemoveUntil(
                      MaterialPageRoute(
                          builder: (context) => const TeacherLayout()),
                      (route) =>
                          false, // This removes all previous routes from the stack
                    );
                  },
                  child: Container(
                    width: double.infinity,
                    height: 48,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: const Center(
                        child: Text(
                      "Login",
                      style: TextStyle(
                        color: Color.fromRGBO(18, 3, 17, 1),
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    )),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
