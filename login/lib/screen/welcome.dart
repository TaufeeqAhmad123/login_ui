import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:login/core/constants/App_text.dart';
import 'package:login/core/constants/app_text_styles.dart';
import 'package:login/core/constants/images.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        children: [
          SizedBox(height: 100),
          Text(AppText.welcome, style: AppTextStyles.welcomeText),
          SizedBox(height: 50),
          SvgPicture.asset(AppImages.welcome, height: 300, width: 300),
        ],
      ),
    );
  }
}