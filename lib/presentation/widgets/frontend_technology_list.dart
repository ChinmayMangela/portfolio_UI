import 'package:flutter/material.dart';
import 'package:portfolio/data/frontend_technologies.dart';
import 'package:portfolio/presentation/widgets/frontend_technology_card.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class FrontendTechnologyList extends StatefulWidget {
  const FrontendTechnologyList({super.key});

  @override
  State<FrontendTechnologyList> createState() => _FrontendTechnologyListState();
}

class _FrontendTechnologyListState extends State<FrontendTechnologyList> {
  final _pageController = PageController(
    viewportFraction: 0.6
  );
  int currentPageIndex = 0;

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: _buildPageViewWidget(),
        ),
        const SizedBox(height: 16),
        _buildPageIndicator(),
      ],
    );
  }

  Widget _buildPageViewWidget() {
    return PageView.builder(
      controller: _pageController,
      itemCount: frontendTechnologies.length,
      onPageChanged: (index) {
        setState(() {
          currentPageIndex = index;
        });
      },
      itemBuilder: (context, index) {
        return FrontendTechnologyCard(
          frontendTechnology: frontendTechnologies[index],
        );
      },
    );
  }

  Widget _buildPageIndicator() {
    return SmoothPageIndicator(
      controller: _pageController,
      count: frontendTechnologies.length,
      effect: ExpandingDotsEffect(
        activeDotColor: frontendTechnologies[currentPageIndex].backgroundColor,
        dotColor: Colors.white,
      )
    );
  }

}

