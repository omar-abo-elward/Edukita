import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class Arabic extends StatelessWidget {
  const Arabic({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage("assets/Blue wallpaper background.jpg"),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Column(
            children: [
              const SizedBox(
                height: 50,
              ),
              Row(
                //mainAxisAlignment: MainAxisAlignment.start,

                children: [
                  const SizedBox(
                    height: 150,
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Image.asset(
                    "assets/png-transparent-education-computer-icons-study-skills-learning-reading-icon-angle-text-orange.png",
                    height: 100,
                    width: 100,
                  ),
                  const Text(
                    "  Arabic",
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              LinearPercentIndicator(
                animation: true,
                animationDuration: 1000,
                lineHeight: 10,
                percent: 0.5,
                progressColor: Colors.blue,
                backgroundColor: Colors.blue.shade100,
                barRadius: const Radius.circular(25),
                leading: const Text(
                  "50",
                  style: const TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
              const SizedBox(
                height: 80,
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  width: 140,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Center(
                    child: Text(
                      "Videos",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  width: 140,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Center(
                    child: Text(
                      "Exerciese",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  width: 140,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Center(
                    child: Text(
                      "Exams",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),

          /*Column(crossAxisAlignment: CrossAxisAlignment.center,
          children: [SizedBox(height: 250,),

            //SizedBox(height: 30,),
            Center(
              child: InkWell(onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Students()));
              },
                child: Container(
                  width: 200,
                  height: 48,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(10),

                  ),
                  child: Center(child: Text("Students",style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,

                  ),)),


                ),
              ),
            ),
            SizedBox(height: 20,),
            Center(
              child: Container(
                width: 200,
                height: 48,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(10),

                ),
                child: InkWell(onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Parents()));
                },
                  child: Center(child: Text("Parents",style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,

                  ),)),
                ),


              ),
            ),

            SizedBox(height: 20,),
            Center(
              child: InkWell(onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Teacher()));
              },
                child: Container(
                  width: 200,
                  height: 48,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(10),

                  ),
                  child: Center(child: Text("Teachers",style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,

                  ),)),


                ),
              ),
            ),
            //SizedBox(height: 60,),







          ],


        ),
      ),*/
        ),
      ),
    );
  }
}
