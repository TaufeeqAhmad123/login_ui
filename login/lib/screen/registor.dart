import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login/core/constants/App_text.dart';
import 'package:login/core/constants/app_text_styles.dart';
import 'package:login/core/constants/colors.dart';
import 'package:login/core/constants/images.dart';
import 'package:login/screen/code_screen.dart';
import 'package:login/screen/login.dart';

class RegistorScreen extends StatelessWidget {
  const RegistorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          children: [
            FadeInDown(
              duration: const Duration(milliseconds: 600),
              child: SizedBox(
                height: MediaQuery.of(context).size.height * 0.4,
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 50,
                    vertical: 20,
                  ),
                  child: Stack(
                    children: [
                      SvgPicture.asset(
                        AppImages.logo2,
                        height: 300,
                        width: 300,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Column(
                          children: [
                            SizedBox(height: 150),

                            Text(
                              AppText.started,
                              style: AppTextStyles.welcomeText.copyWith(
                                fontSize: 36,
                              ),
                            ),

                            SizedBox(height: 5),

                            Text(
                              AppText.freeAccount,
                              style: AppTextStyles.bodyText,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            FadeInLeft(
              delay: const Duration(milliseconds: 200),
              duration: const Duration(milliseconds: 600),
              child: textField(
                data: 'Full Name',
                icon: Icons.person_2_outlined,
              ),
            ),
            SizedBox(height: 15),
            FadeInLeft(
              delay: const Duration(milliseconds: 300),
              duration: const Duration(milliseconds: 600),
              child: textField(data: 'Valid email', icon: Icons.email_outlined),
            ),
            SizedBox(height: 15),
            FadeInLeft(
              delay: const Duration(milliseconds: 400),
              duration: const Duration(milliseconds: 600),
              child: textField(
                data: 'Phone Number',
                icon: Icons.phone_android_rounded,
              ),
            ),
            SizedBox(height: 15),
            FadeInLeft(
              delay: const Duration(milliseconds: 500),
              duration: const Duration(milliseconds: 600),
              child: textField(
                data: 'Enter your password',
                icon: Icons.visibility_off_outlined,
              ),
            ),
            SizedBox(height: 25),

            FadeIn(
              delay: const Duration(milliseconds: 600),
              duration: const Duration(milliseconds: 600),
              child: Row(
                children: [
                  Container(
                    height: 15,
                    width: 15,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: primaryColor),
                    ),
                  ),
                  SizedBox(width: 5),
                  RichText(
                    text: TextSpan(
                      spellOut: true,
                      children: [
                        TextSpan(
                          text: "By checking the box you agree to our ",
                          style: AppTextStyles.smallText.copyWith(
                            color: Colors.black54,
                          ),
                        ),
                        TextSpan(
                          text: "Terms",
                          style: AppTextStyles.smallText.copyWith(
                            color: primaryColor,
                          ),
                        ),
                        TextSpan(
                          text: " and ",
                          style: AppTextStyles.smallText.copyWith(
                            color: Colors.black54,
                          ),
                        ),
                        TextSpan(
                          text: "conditions",
                          style: AppTextStyles.smallText.copyWith(
                            color: primaryColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            Spacer(),
            FadeInUp(
              delay: const Duration(milliseconds: 600),
              duration: const Duration(milliseconds: 600),
              child: MyButton(
                title: "Next",
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const CodeScreen()),
                  );
                },
              ),
            ),
            SizedBox(height: 15),
            FadeInUp(
              delay: const Duration(milliseconds: 800),
              duration: const Duration(milliseconds: 600),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already have an account? ",
                    style: AppTextStyles.bodyText.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    "Login",
                    style: AppTextStyles.bodyText.copyWith(
                      color: primaryColor,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
