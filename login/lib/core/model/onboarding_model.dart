import 'package:login/core/constants/App_text.dart';
import 'package:login/core/constants/images.dart';

class OnboardingModel {
  final String image;
  final String title;
  final String subtitle;

  const OnboardingModel({
    required this.image,
    required this.title,
    required this.subtitle,
  });
}

// List of onboarding data
final List<OnboardingModel> onboardingData = [
  const OnboardingModel(
    image: AppImages.onbaording1,
    title: AppText.onboarding1,
    subtitle: AppText.onboarding1_subtitle,
  ),
  const OnboardingModel(
    image: AppImages.onbaording2,
    title: AppText.onboarding2,
    subtitle: AppText.onboarding2_subtitle,
  ),
  const OnboardingModel(
    image: AppImages.onbaording3,
    title: AppText.onboarding3,
    subtitle: AppText.onboarding3_subtitle,
  ),
];
