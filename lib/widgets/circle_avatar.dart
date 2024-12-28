import 'package:flutter/material.dart';
import 'package:portafolio/constants/colors.dart';




class MyCircleAvatar extends StatelessWidget {
  const MyCircleAvatar({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
            alignment: Alignment.center,
            children: [
              Container(
                width: 370,
                height: 370,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: CustomColor.yellowPrimary,
                ),
              ),
              const CircleAvatar(
                radius: 180,
                backgroundImage: AssetImage('assets/PortafolioImage.png'),
              ),
            ],
          );
  }
}