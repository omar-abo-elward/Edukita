import 'package:educita/parts-of-matrial.dart';
import 'package:flutter/material.dart';

class MaterialScreen extends StatelessWidget {
  const MaterialScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage("assets/Blue wallpaper background.jpg"))),
        child: ListView.separated(
          separatorBuilder: (context, index) => const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: SizedBox(
              width: double.infinity,
              height: 1,
            ),
          ),
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const PartsOfMatrial()));
              },
              child: Column(
                children: [
                  Container(
                    decoration: const BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    width: double.infinity,
                    height: 100,
                    child: Card(
                      color: Colors.white,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              CircleAvatar(
                                backgroundColor: Colors.blue,
                                radius: 35,
                                child: Image.asset(
                                  'assets/classroom.png',
                                  width: 100,
                                  height: 70,
                                ),
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              Text(
                                ' ${subject[index]} ',
                                style: const TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          itemCount: subject.length,
        ),
      ),
    );
  }
}

List<String> subject = ['English', 'Arabic', 'Math', 'Gegoraphi'];
