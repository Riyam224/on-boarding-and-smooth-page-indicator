import 'package:flutter/material.dart';
import 'package:on_boarding_splash_indicator/constants.dart';

import 'widgets/on_boarding_view_body.dart';

class OnBoardingView extends StatelessWidget {
  const OnBoardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.kPrimaryColor,
      body: SafeArea(
        child: OnBoardingViewBody(),
      ),
    );
  }
}
