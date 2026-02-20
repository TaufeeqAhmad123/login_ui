import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:login/core/constants/App_text.dart';
import 'package:login/core/constants/app_text_styles.dart';
import 'package:login/core/constants/colors.dart';
import 'package:login/core/constants/images.dart';
import 'package:login/screen/onbaording.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const OnbaordingScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(AppImages.logo),
            SizedBox(height: 10),
            Text(AppText.travello, style: AppTextStyles.appTitle),
          ],
        ),
      ),
    );
  }
}
