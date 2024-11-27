import 'package:flutter/material.dart';

class PartsOfMatrial extends StatelessWidget {
  const PartsOfMatrial({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          'EDUKITA',
          style: TextStyle(
              color: Colors.white, fontSize: 19, fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage("assets/Blue wallpaper background.jpg"))),
        child: SingleChildScrollView(
          child: Column(
            children: [
              GridView.count(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  crossAxisSpacing: 8,
                  mainAxisSpacing: 4,
                  crossAxisCount: 2,
                  childAspectRatio: 1 / 1.24,
                  children: const [
                    Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        CircleAvatar(
                          radius: 300,
                          backgroundColor: Colors.transparent,
                          backgroundImage: AssetImage('assets/workshop.png'),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          'WorkShop',
                          style: TextStyle(
                              color: Colors.blue,
                              fontSize: 22,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        CircleAvatar(
                          radius: 300,
                          backgroundColor: Colors.transparent,
                          backgroundImage:
                              AssetImage('assets/presentation.png'),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Presentation',
                          style: TextStyle(
                              color: Colors.blue,
                              fontSize: 22,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        CircleAvatar(
                          radius: 300,
                          backgroundColor: Colors.transparent,
                          backgroundImage: AssetImage('assets/theory.png'),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Theory',
                          style: TextStyle(
                              color: Colors.blue,
                              fontSize: 22,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        CircleAvatar(
                          radius: 300,
                          backgroundColor: Colors.transparent,
                          backgroundImage: AssetImage('assets/za.png'),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          'IQ',
                          style: TextStyle(
                              color: Colors.blue,
                              fontSize: 22,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Spacer()
                    
                  ])
            ],
          ),
        ),
      ),
    );
  }
}
