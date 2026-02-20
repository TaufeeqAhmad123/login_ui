import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:login/core/constants/app_text_styles.dart';
import 'package:login/core/constants/colors.dart';

import 'package:login/core/model/onboarding_model.dart';
import 'package:login/screen/login.dart';

class OnbaordingScreen extends StatefulWidget {
  const OnbaordingScreen({super.key});

  @override
  State<OnbaordingScreen> createState() => _OnbaordingScreenState();
}

class _OnbaordingScreenState extends State<OnbaordingScreen> {
  PageController _pageController = PageController();
  int _currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.65,
                child: PageView.builder(
                  controller: _pageController,
                  itemCount: 3,
                  onPageChanged: (page) {
                    setState(() {
                      _currentPage = page;
                    });
                  },
                  itemBuilder: (context, index) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 60),

                        Center(
                          child: SvgPicture.asset(
                            onboardingData[index].image,
                            height: 250,
                          ),
                        ),

                        const SizedBox(height: 90),

                        Text(
                          onboardingData[index].title,
                          style: AppTextStyles.onbaordingtitle,
                        ),

                        const SizedBox(height: 10),

                        Text(
                          onboardingData[index].subtitle,
                          style: AppTextStyles.onboardingsubTitle,
                        ),
                      ],
                    );
                  },
                ),
              ),

              /// 👇 DotsIndicator RIGHT AFTER PageView
              //const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  DotsIndicator(
                    dotsCount: 3,
                    animate: true,
                    animationDuration: const Duration(milliseconds: 300),
                    position: _currentPage.toDouble(),
                    decorator: DotsDecorator(
                      color: primaryColor.withValues(alpha: 0.5),
                      activeColor: primaryColor,
                      size: const Size.square(9),
                      activeSize: const Size(25, 9),
                      activeShape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      if (_currentPage == 2) {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (context) => const LoginScreen()),
                        );
                      }
                      _pageController.nextPage(
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.ease,
                      );
                    },
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        shape: BoxShape.circle,
                      ),
                      child: Icon(Icons.arrow_forward, color: Colors.white),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
