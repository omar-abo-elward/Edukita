import 'package:educita/onBording_Screens/OnBoardingController.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:lottie/lottie.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:get/get.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage("assets/Blue wallpaper background.jpg"))),
        child: Stack(
          children: [
            PageView(
                controller: controller.pageController,
                onPageChanged: controller.updatePageIndicator,
                children: const [
                  OnBoardingPage(
                      animation: "assets/Meeting_animation.json",
                      repeat: true,
                      title: "Online Learning",
                      subTitle:
                          "We provide classes online classes and pre recorded leactures!"),
                  OnBoardingPage(
                      animation: "assets/Practice_animation.json",
                      repeat: true,
                      title: "Study! Practice! Exam!",
                      subTitle:
                          "Use material and pre recorded leactures to study.\nUse exercises to practice.\nexam time!"),
                  OnBoardingPage(
                      animation: "assets/Progress_animation.json",
                      repeat: false,
                      title: "Track Your Progress",
                      subTitle:
                          "Analyse your progress and Track your results in every subject."),
                ]),
            const OnBoardingNavigator(),
            const OnBoardingNextPageButton(),
          ],
        ),
      ),
    );
  }
}

class OnBoardingNextPageButton extends StatelessWidget {
  const OnBoardingNextPageButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
        bottom: kBottomNavigationBarHeight,
        right: 20,
        child: ElevatedButton(
          onPressed: () => OnBoardingController.intance.nextPage(),
          style: ElevatedButton.styleFrom(
              shape: const CircleBorder(),
              backgroundColor: const Color.fromRGBO(9, 97, 245, 1),
              iconColor: Colors.white),
          child: const Icon(Iconsax.arrow_right_3_copy),
        ));
  }
}

class OnBoardingNavigator extends StatelessWidget {
  const OnBoardingNavigator({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnBoardingController.intance;
    return Positioned(
        bottom: kBottomNavigationBarHeight,
        left: 20,
        child: SmoothPageIndicator(
            count: 3,
            controller: controller.pageController,
            onDotClicked: controller.dotNavigationClick,
            effect: const ExpandingDotsEffect(
              activeDotColor: Color.fromRGBO(9, 97, 245, 1),
              dotHeight: 6,
            )));
  }
}

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: kToolbarHeight,
      right: 20,
      child: TextButton(
        onPressed: () => OnBoardingController.intance.skipPage(),
        child: const Text(
          'Skip',
        ),
      ),
    );
  }
}

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({
    super.key,
    required this.animation,
    required this.repeat,
    required this.title,
    required this.subTitle,
  });
  final bool repeat;
  final String title, subTitle, animation;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 100),
          Lottie.asset(animation, repeat: repeat),
          const SizedBox(height: 100),
          Text(title,
              style: const TextStyle(
                  color: Color.fromRGBO(32, 34, 68, 1),
                  fontWeight: FontWeight.w600,
                  fontSize: 24),
              textAlign: TextAlign.center),
          const SizedBox(height: 8),
          Text(subTitle,
              style: const TextStyle(
                  color: Color.fromRGBO(84, 84, 84, 1),
                  fontWeight: FontWeight.w700,
                  fontSize: 14),
              textAlign: TextAlign.center)
        ],
      ),
    );
  }
}
