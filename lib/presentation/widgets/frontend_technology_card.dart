import 'package:flutter/material.dart';
import 'package:portfolio/domain/models/frontend_technology.dart';
import 'package:portfolio/presentation/widgets/text.dart';
import 'package:portfolio/utils/helper_functions.dart';

class FrontendTechnologyCard extends StatelessWidget {
  const FrontendTechnologyCard({super.key, required this.frontendTechnology});

  final FrontendTechnology frontendTechnology;

  @override
  Widget build(BuildContext context) {
    final screenWidth = HelperFunctions.getScreenWidth(context);
    final screenHeight = HelperFunctions.getScreenHeight(context);
    return Container(
      margin: const EdgeInsets.all(7),
      padding: const EdgeInsets.all(10),
      width: screenWidth * 0.5,
      height: screenHeight * 0.18,
      decoration: BoxDecoration(
        color: frontendTechnology.backgroundColor,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(
            frontendTechnology.icon,
            size: 40,
          ),
          CustomText(
            text: frontendTechnology.name,
            isBoldFont: true,
            textColor: Colors.black,
            textSize: 20,
          ),
        ],
      ),
    );
  }
}
