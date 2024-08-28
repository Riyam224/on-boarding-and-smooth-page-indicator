import 'package:flutter/material.dart';
import 'package:on_boarding_splash_indicator/constants.dart';
import 'package:on_boarding_splash_indicator/core/utils/assets.dart';
import 'package:on_boarding_splash_indicator/features/on_boarding/presentation/views/widgets/page_view_item.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingViewBody extends StatefulWidget {
  const OnBoardingViewBody({super.key});

  @override
  State<OnBoardingViewBody> createState() => _OnBoardingViewBodyState();
}

class _OnBoardingViewBodyState extends State<OnBoardingViewBody> {
  final _pageController = PageController();
  var _currentPage = 0;
  bool isVisible = true;

  void jumpToPage(int page) {
    setState(() {
      _currentPage = page;
      _pageController.animateToPage(
        page,
        duration: const Duration(seconds: 2),
        curve: Curves.easeIn,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: PageView(
            controller: _pageController,
            onPageChanged: (val) {
              setState(() {
                _currentPage = val;
              });
            },
            children: const [
              PageViewItem(
                image: Assets.imagesObject,
                title: 'Behavioral Health Service',
                subtitle:
                    'Transforming lives by offering hope and opportunities for recovery, wellness, and independence.',
              ),
              PageViewItem(
                image: Assets.imagesObject2,
                title: 'Mental Health Service',
                subtitle:
                    'If you think that you or someone you know has a mental health problem, there are a number of ways that you can seek advice.',
              ),
              PageViewItem(
                image: Assets.imagesObject3,
                title: 'Get Started',
                subtitle:
                    'Take the first step on your journey to better mental health. Get started today!',
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 114,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 36.83),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                _currentPage == 2 ? '' : 'skip',
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w400,
                  height: 0.07,
                ),
              ),
              SmoothPageIndicator(
                controller: _pageController,
                count: 3,
                effect: const ExpandingDotsEffect(
                  dotHeight: 20,
                  dotWidth: 20,
                  dotColor: Colors.grey,
                  activeDotColor: Color.fromARGB(255, 31, 22, 111),
                ),
              ),
              GestureDetector(
                onTap: () {
                  jumpToPage(_currentPage + 1);
                },
                child: Container(
                  width: 41, // Width of the circle
                  height: 41, // Height of the circle
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle, // Make the container circular
                    color: Colors.white, // Background color
                  ),
                  child: const Center(
                    child: Icon(
                      Icons.arrow_forward, // Arrow icon
                      color: AppColors.kPrimaryColor, // Icon color
                      size: 20, // Icon size
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 64,
        ),
      ],
    );
  }
}
