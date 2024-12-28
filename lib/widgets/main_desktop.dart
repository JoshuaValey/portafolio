import 'package:flutter/material.dart';
import 'package:portafolio/constants/colors.dart';
import 'package:portafolio/constants/strings.dart';
import 'package:portafolio/widgets/circle_avatar.dart';

class MainDesktop extends StatelessWidget {
  const MainDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      height: screenHeight / 1.2,
      constraints: const BoxConstraints(minHeight: 350.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(cMmainMessage,
                  style: TextStyle(
                      fontSize: 30,
                      color: CustomColor.whitePrimary,
                      fontWeight: FontWeight.bold)),
              const SizedBox(height: 20),
              SizedBox(
                width: 300,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: CustomColor.yellowPrimary),
                  child: const Text('Contáctame',
                      style: TextStyle(
                          fontSize: 20, color: CustomColor.whitePrimary)),
                ),
              )
            ],
          ),
         const MyCircleAvatar(),

          /*Image.asset('assets/PortafolioImage.png',
                        width: screenWidth/2, 
                        height: screenSize.height / 1.2)*/
        ],
      ),
    );
  }
}
