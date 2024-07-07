import 'package:flutter/material.dart';
import 'package:portfolio/presentation/widgets/text.dart';
import 'package:portfolio/utils/helper_functions.dart';

import '../../domain/models/technology.dart';

class TechnologyCategoryCard extends StatelessWidget {
  const TechnologyCategoryCard({
    super.key,
    required this.categoryName,
    required this.technologies,
  });

  final String categoryName;
  final List<Technology> technologies;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: HelperFunctions.getScreenWidth(context) * 0.6,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.grey)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomText(
              text: categoryName, isBoldFont: true, textColor: Colors.grey),
          SizedBox(height: HelperFunctions.getScreenHeight(context) * 0.02),
          ...technologies.map((technology) {
            return Padding(
              padding: const EdgeInsets.all(5.0),
              child: Row(
                children: [
                  Image.asset(
                    technology.iconUrl,
                    height: 32,
                    width: 32,
                  ),
                  const SizedBox(width: 10),
                  CustomText(
                      text: technology.name,
                      isBoldFont: false,
                      textColor: Colors.grey),
                ],
              ),
            );
          }),
        ],
      ),
    );
  }
}

