import 'package:flutter/material.dart';
import 'package:football_app/screens/sign_in/widgets/body.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  static String routeName = "/sign_in";

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Body());
  }
}
