import 'package:flutter/material.dart';

class PageViewItem extends StatelessWidget {
  const PageViewItem(
      {super.key,
      required this.image,
      required this.title,
      required this.subtitle});

  final String image;
  final String title;
  final String subtitle;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 90,
        ),
        Container(
          width: 376,
          height: 310,
          child: Image.asset(
            image,
            fit: BoxFit.fill,
          ),
        ),
        const SizedBox(
          height: 52,
        ),
        Text(
          title,
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w800,
            letterSpacing: -0.75,
          ),
        ),
        const SizedBox(
          height: 50,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Text(
            subtitle,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 15,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w300,
            ),
          ),
        ),
      ],
    );
  }
}
