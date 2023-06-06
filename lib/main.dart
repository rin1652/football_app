import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:football_app/routs.dart';
import 'package:football_app/themes/themes.dart';
import 'screens/onboarding/onboarding_screen.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: theme,
      themeMode: ThemeMode.light,
      // home: OnboardingScreen(),
      initialRoute: OnboardingScreen.routeName,
      routes: routes,
    );
  }
}
