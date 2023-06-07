import 'package:flutter/material.dart';
import 'package:football_app/presentation/screens/onboarding/widgets/body.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});
  static String routeName = "/onboarding";
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Body(),
    );
  }
}
