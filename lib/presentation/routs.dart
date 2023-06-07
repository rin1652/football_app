import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:football_app/presentation/screens/sign_in/sign_in_screen.dart';

import 'screens/onboarding/onboarding_screen.dart';

final Map<String, WidgetBuilder> routes = {
  OnboardingScreen.routeName: (context) => const OnboardingScreen(),
  SignInScreen.routeName: (context) => const SignInScreen(),
};
