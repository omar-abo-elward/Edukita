import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Parents extends StatelessWidget {
  const Parents({super.key});

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
          padding: const EdgeInsets.symmetric(horizontal: 32),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 50,
              ),
              Center(child: Lottie.asset("assets/parents.json")),
              //Image.asset("assets/student.png",height: 150,width: 150,)),
              const SizedBox(
                height: 20,
              ),
              const Center(
                child: Column(
                  children: [
                    Text(
                      "Welcome Back!",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
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
                onTap: () {},
                child: Container(
                  width: double.infinity,
                  height: 48,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: InkWell(
                    onTap: () {
                      // Navigator.push(context, MaterialPageRoute(builder: (context)=>Teacher()));
                    },
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
