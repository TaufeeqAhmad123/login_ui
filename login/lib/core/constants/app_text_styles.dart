import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextStyles {
  // Headings
  static const TextStyle heading1 = TextStyle(
    fontSize: 32,
    fontWeight: FontWeight.bold,
    color: Colors.black,
    letterSpacing: 1.2,
  );

  static const TextStyle heading2 = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w700,
    color: Colors.black,
    letterSpacing: 1.0,
  );

  static const TextStyle heading3 = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w600,
    color: Colors.black,
    letterSpacing: 0.8,
  );

  // App Title (e.g., "Travello")
  static  TextStyle appTitle = TextStyle(
    fontSize: 48,
    //fontWeight: FontWeight.w800,
    color: Colors.black,
    fontFamily: "NicoMoji",
    letterSpacing: 1.5,

  );

  // Onboarding Title
 static TextStyle onbaordingtitle=GoogleFonts.mulish( fontSize:36,
    fontWeight: FontWeight.bold,
    color: Colors.black,
    height: 1.3,);

  // Onboarding Subtitle
 static  TextStyle onboardingsubTitle = GoogleFonts.mulish(
    fontSize:26,
    fontWeight: FontWeight.w200,
    color: Colors.black,
    height: 1.3,
  );

  // Welcome Text
  static final TextStyle welcomeText = GoogleFonts.mulish(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: Colors.black,
  );

  // Body Text
  static final TextStyle bodyText =  GoogleFonts.mulish(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: Colors.black87,
    height: 1.5,
  );

  // Small / Caption Text
  static const TextStyle captionText = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    color: Colors.grey,
  );

  // Button Text
  static final TextStyle buttonText =  GoogleFonts.mulish(
    fontSize: 20,
    fontWeight: FontWeight.w600,
    color: Colors.white,
    letterSpacing: 1.0,
  );

  // Code / Verification Text
  static const TextStyle codeText = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: Colors.black54,
    height: 1.6,
  );

  // Sign Up / Link Text
  static const TextStyle linkText = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    color: Colors.blue,
    decoration: TextDecoration.underline,
  );
}
