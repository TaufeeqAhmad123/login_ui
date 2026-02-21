import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login/core/constants/App_text.dart';
import 'package:login/core/constants/app_text_styles.dart';
import 'package:login/core/constants/colors.dart';
import 'package:login/core/constants/images.dart';
import 'package:login/screen/registor.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            FadeInDown(
              duration: const Duration(milliseconds: 600),
              child: SizedBox(
                height: MediaQuery.of(context).size.height * 0.4,
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
                        padding: const EdgeInsets.symmetric(horizontal: 50),
                        child: Column(
                          children: [
                            SizedBox(height: 170),

                            Text(
                              AppText.welcome,
                              style: AppTextStyles.welcomeText,
                            ),

                            SizedBox(height: 5),

                            Text(AppText.signup, style: AppTextStyles.bodyText),
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
                data: 'Enter your email',
                icon: Icons.email_outlined,
              ),
            ),
            SizedBox(height: 15),
            FadeInLeft(
              delay: const Duration(milliseconds: 400),
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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      SizedBox(
                        height: 15,
                        width: 15,
                        child: Checkbox(
                          checkColor: primaryColor,
                          activeColor: primaryColor,
                          value: false,
                          onChanged: (value) {},
                          visualDensity: VisualDensity(
                            horizontal: VisualDensity.minimumDensity,
                            vertical: VisualDensity.minimumDensity,
                          ),
                        ),
                      ),
                      SizedBox(width: 5),
                      Text("Remember me", style: AppTextStyles.smallText),
                    ],
                  ),
                  Text(
                    "Forgot Password",
                    style: AppTextStyles.smallText.copyWith(
                      color: primaryColor,
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
                title: "Login",
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const RegistorScreen(),
                  ),
                ),
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
                    "Don't have an account? ",
                    style: AppTextStyles.bodyText.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    "Sign Up",
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

class MyButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String title;
  const MyButton({super.key, required this.title, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        fixedSize: Size(350, 50),
        backgroundColor: primaryColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      ),
      onPressed: onPressed,
      child: Text(title, style: AppTextStyles.buttonText),
    );
  }
}

class textField extends StatelessWidget {
  final String data;
  final IconData icon;
  const textField({super.key, required this.data, required this.icon});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        hintText: data,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
        hintStyle: GoogleFonts.mulish(
          fontSize: 14,
          fontWeight: FontWeight.w500,
          color: Colors.black54,
        ),

        fillColor: const Color.fromARGB(255, 207, 240, 243),
        filled: true,

        suffixIcon: Icon(icon, color: Colors.black54),

        enabledBorder: InputBorder.none,
        focusedBorder: InputBorder.none,
        errorBorder: InputBorder.none,
        focusedErrorBorder: InputBorder.none,
      ),
    );
  }
}
