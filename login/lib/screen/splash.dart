import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:login/core/constants/App_text.dart';
import 'package:login/core/constants/app_text_styles.dart';
import 'package:login/core/constants/colors.dart';
import 'package:login/core/constants/images.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: primaryColor,
      body:Center(child:Column(
        children:[
            SvgPicture.asset(AppImages.logo),
            SizedBox(height:10),
            Text(AppText.travello ,style:AppTextStyles.appTitle,),
        ]
      ))
    );
  }
}