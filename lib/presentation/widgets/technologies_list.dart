import 'package:flutter/material.dart';
import 'package:portfolio/presentation/widgets/technology_category_card.dart';

import '../../data/technologies.dart';

class TechnologiesList extends StatelessWidget {
  const TechnologiesList({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: technologiesList.entries.map((entry) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: TechnologyCategoryCard(
              categoryName: entry.key,
              technologies: entry.value,
            ),
          );
        }).toList(),
      ),
    );
  }
}
