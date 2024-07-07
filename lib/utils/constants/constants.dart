import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/utils/constants/text_strings.dart';

import '../../presentation/widgets/button.dart';
import '../../presentation/widgets/frontend_technology_list.dart';
import '../../presentation/widgets/technologies_list.dart';
import '../../presentation/widgets/text.dart';
import '../helper_functions.dart';

const backgroundColor = Colors.black;

Widget buildBody({required BuildContext context, required bool isDesktopMode}) {
  double screenWidth = HelperFunctions.getScreenWidth(context);
  double screenHeight = HelperFunctions.getScreenHeight(context);
  return Container(
    margin: EdgeInsets.symmetric(
        vertical: screenHeight * 0.1, horizontal: screenWidth * 0.1),
    width: screenWidth,
    height: screenHeight,
    child: Center(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            if(isDesktopMode)
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                      width: screenWidth * 0.2,
                      child: Column(
                        children: [
                          buildStudentDescriptionComponent(
                              screenWidth, screenHeight),
                          _buildTwoButtonsRow(),
                        ],
                      )),
                  buildProfilePicture(context),
                ],
              )
            else
              buildProfilePicture(context),
            SizedBox(height: screenHeight * 0.1),
            buildStudentDescriptionComponent(screenWidth, screenHeight),
            SizedBox(height: screenHeight * 0.1),
            buildDownloadCVButton(),
            SizedBox(height: screenHeight * 0.01),
            buildSeeExperienceButton(),
            SizedBox(height: screenHeight * 0.2),
            buildExperiencesComponent(screenHeight, context),
            SizedBox(height: screenHeight * 0.1),
            _buildSkillsSection(screenHeight),
            SizedBox(height: screenHeight * 0.02),
            const TechnologiesList(),
            SizedBox(height: screenHeight * 0.2),
            buildMySocialMediaAccountsIcons(),
          ],
        ),
      ),
    ),
  );
}

Widget _buildTwoButtonsRow() {
  return Row(
    children: [
      buildDownloadCVButton(),
      buildSeeExperienceButton(),
    ],
  );
}

Widget buildProfilePicture(BuildContext context) {
  return Image.asset(
    'assets/images/profile_pic.png',
    height: HelperFunctions.getScreenWidth(context) * 0.4,
  );
}

Widget buildStudentDescriptionComponent(
    double screenWidth, double screenHeight) {
  return SizedBox(
    width: screenWidth > 680 ? screenWidth * 0.6 : screenWidth * 0.8,
    child: const Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CustomText(
          text: headingText,
          isBoldFont: true,
          textColor: Colors.white,
          textSize: 40,
        ),
        CustomText(
          text: descriptionText,
          isBoldFont: false,
          textColor: Colors.grey,
          textSize: 13,
        ),
      ],
    ),
  );
}

Widget buildDownloadCVButton() {
  return CustomButton(
    buttonLabel: 'Download CV',
    onButtonPressed: () {},
  );
}

Widget buildSeeExperienceButton() {
  return TextButton(
    onPressed: () {},
    child: const CustomText(
      text: 'See Experiences',
      textColor: Colors.deepPurple,
      isBoldFont: false,
    ),
  );
}

Widget _buildExperienceText() {
  return const Column(
    children: [
      CustomText(
        text: '4 years of',
        isBoldFont: false,
        textColor: Colors.grey,
      ),
      CustomText(
        text: 'XP',
        isBoldFont: true,
        textColor: Colors.white,
        textSize: 70,
      ),
      CustomText(
        text: 'With the most popular\n ecosystem frontend',
        isBoldFont: false,
        textColor: Colors.grey,
      ),
    ],
  );
}

Widget buildExperiencesComponent(double screenHeight, BuildContext context) {
  final screenWidth = HelperFunctions.getScreenWidth(context);
  return screenWidth > 680
      ? Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(flex: 1, child: _buildExperienceText()),
            SizedBox(height: screenHeight * 0.05),
            Expanded(flex: 3, child: buildTechnologyCardsList(screenHeight)),
          ],
        )
      : Column(
          children: [
            _buildExperienceText(),
            SizedBox(height: screenHeight * 0.02),
            buildTechnologyCardsList(screenHeight),
          ],
        );
}

Widget _buildSkillsSection(double screenHeight) {
  return Column(
    children: [
      CustomText(
          text: 'Javascript',
          isBoldFont: false,
          textColor: Colors.deepPurple.shade200,
          textSize: 30),
      SizedBox(height: screenHeight * 0.1),
      CustomText(
          text: 'React',
          isBoldFont: false,
          textColor: Colors.deepPurple.shade500,
          textSize: 30),
      SizedBox(height: screenHeight * 0.1),
      CustomText(
          text: 'Coffee',
          isBoldFont: false,
          textColor: Colors.deepPurple.shade800,
          textSize: 30),
    ],
  );
}
Widget buildTechnologyCardsList(double screenHeight) {
  return SizedBox(
    height: screenHeight * 0.2,
    child: const FrontendTechnologyList(),
  );
}

Widget buildMySocialMediaAccountsIcons() {
  return Row(
    children: [
      const CustomText(
          text: 'Follow me', isBoldFont: false, textColor: Colors.grey),
      const Spacer(),
      buildIcon(FontAwesomeIcons.github),
      buildIcon(FontAwesomeIcons.linkedin),
      buildIcon(FontAwesomeIcons.instagram),
    ],
  );
}

Widget buildIcon(IconData icon) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 5.0),
    child: Icon(
      icon,
      color: Colors.purple,
      size: 40,
    ),
  );
}
