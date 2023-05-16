import 'package:cat_breeds_app/presentation/ui/shared/custom_icon.dart';
import 'package:flutter/material.dart';

class SocialButtons extends StatelessWidget {
  const SocialButtons({super.key});

  @override
  Widget build(BuildContext context) {
    const double iconSize = 35;
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomIcon(
          path: 'assets/social/facebook.svg',
          url: 'https://www.facebook.com/devpaul.co/',
          label: 'Facebook Logo',
          width: iconSize,
          height: iconSize,
        ),
        CustomIcon(
          path: 'assets/social/twitter.svg',
          url: 'https://twitter.com/devpaul_co',
          label: 'Twitter Logo',
          width: iconSize,
          height: iconSize,
        ),
        CustomIcon(
          path: 'assets/social/linkedin.svg',
          url:
              'https://www.linkedin.com/in/paul-mauricio-realpe-guerrero-631b17a6/',
          label: 'LinkedIn Logo',
          width: iconSize,
          height: iconSize,
        ),
        CustomIcon(
          path: 'assets/social/github.svg',
          url: 'https://github.com/paulmrg-461',
          label: 'Github Logo',
          width: iconSize,
          height: iconSize,
        ),
        CustomIcon(
          path: 'assets/social/instagram.svg',
          url: 'https://www.instagram.com/devpaul_co/',
          label: 'Instagram Logo',
          width: iconSize,
          height: iconSize,
        ),
      ],
    );
  }
}
