import 'package:flutter/material.dart';
import 'package:on_boarding_splash_indicator/features/on_boarding/presentation/views/on_boarding_view.dart';
import 'package:on_boarding_splash_indicator/features/splash/presentation/views/splash_view.dart';

void main() {
  runApp(const OnBoardingApp());
}

class OnBoardingApp extends StatelessWidget {
  const OnBoardingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: OnBoardingView(),
    );
  }
}
