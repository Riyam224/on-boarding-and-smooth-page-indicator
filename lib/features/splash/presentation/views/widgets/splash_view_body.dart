// ignore_for_file: avoid_unnecessary_containers, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:on_boarding_splash_indicator/constants.dart';
import 'package:on_boarding_splash_indicator/core/utils/assets.dart';
import 'package:on_boarding_splash_indicator/features/on_boarding/presentation/views/on_boarding_view.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  void initState() {
    super.initState();
    MoveToFunc();
  }

  void MoveToFunc() {
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => const OnBoardingView(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.kPrimaryColor,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: double.infinity,
              child: SvgPicture.asset(Assets.imagesEllipse),
            ),
            Container(
              child: const Text(
                'PhychBubble',
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  letterSpacing: 4,
                ),
              ),
            ),
            Container(
              width: double.infinity,
              child: SvgPicture.asset(Assets.imagesEllipse2),
            ),
          ],
        ));
  }
}
