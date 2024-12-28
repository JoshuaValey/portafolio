import 'package:flutter/material.dart';
import 'package:portafolio/constants/colors.dart';

class SiteLogo extends StatelessWidget {
  const SiteLogo({super.key, this.onTap});

  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: const Text(
        'jrValey',
        style: TextStyle(
            color: CustomColor.yellowSecondary,
            fontSize: 20,
            fontWeight: FontWeight.bold,
            decoration: TextDecoration.underline),
      ),
    );
  }
}
