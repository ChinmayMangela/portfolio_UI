import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/presentation/widgets/button.dart';
import 'package:portfolio/presentation/widgets/frontend_technology_list.dart';
import 'package:portfolio/presentation/widgets/technologies_list.dart';
import 'package:portfolio/presentation/widgets/text.dart';
import 'package:portfolio/utils/constants/text_strings.dart';
import 'package:portfolio/utils/helper_functions.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool showExperiences = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
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
              _buildProfilePicture(),
              SizedBox(height: screenHeight * 0.1),
              _buildStudentDescriptionComponent(screenWidth, screenHeight),
              SizedBox(height: screenHeight * 0.1),
              _buildDownloadCVButton(),
              SizedBox(height: screenHeight * 0.01),
              _buildSeeExperienceButton(),
              SizedBox(height: screenHeight * 0.2),
              if(showExperiences) _buildExperiencesComponent(screenHeight),
              SizedBox(height: screenHeight * 0.1),
              _buildSkillsSections(screenHeight),
              SizedBox(height: screenHeight * 0.1),
              const CustomText(text: '    These are the\n technologies i\'ve\n     been using', isBoldFont: false, textColor: Colors.grey, textSize: 20,),
              SizedBox(height: screenHeight * 0.02),
              const TechnologiesList(),
              SizedBox(height: screenHeight * 0.2),
              _buildMySocialMediaAccountsIcon(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildProfilePicture() {
    return Image.asset(
      'assets/images/profile_pic.png',
      height: HelperFunctions.getScreenWidth(context) * 0.4,
    );
  }

  Widget _buildStudentDescriptionComponent(
      double screenWidth, double screenHeight) {
    return const Column(
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
    );
  }

  Widget _buildDownloadCVButton() {
    return CustomButton(
      buttonLabel: 'Download CV',
      onButtonPressed: () {},
    );
  }

  Widget _buildSeeExperienceButton() {
    final buttonText = showExperiences ? 'Hide Experiences' : 'Show Experiences';
    return TextButton(
      onPressed: () {
        setState(() {
          showExperiences = !showExperiences;
        });
      },
      child: CustomText(
        text: buttonText,
        textColor: Colors.deepPurple,
        isBoldFont: false,
      ),
    );
  }

  Widget _buildExperiencesComponent(double screenHeight) {
    return Column(
      children: [
        const CustomText(
          text: '4 years of',
          isBoldFont: false,
          textColor: Colors.grey,
        ),
        const CustomText(
          text: 'XP',
          isBoldFont: true,
          textColor: Colors.white,
          textSize: 70,
        ),
        const CustomText(
          text: 'With the most popular\n ecosystem frontend',
          isBoldFont: false,
          textColor: Colors.grey,
        ),
        SizedBox(height: screenHeight * 0.02),
        _buildTechnologyCardsList(screenHeight),
      ],
    );
  }


  Widget _buildTechnologyCardsList(double screenHeight) {
    return SizedBox(
      height: screenHeight * 0.2,
      child: const FrontendTechnologyList(),
    );
  }


  Widget _buildSkillsSections(double screenHeight) {
    return Column(
      children: [
        CustomText(text: 'Javascript', isBoldFont: false, textColor: Colors.deepPurple.shade200, textSize: 30),
        SizedBox(height: screenHeight * 0.1),
        CustomText(text: 'React', isBoldFont: false, textColor: Colors.deepPurple.shade500, textSize: 30),
        SizedBox(height: screenHeight * 0.1),
        CustomText(text: 'Coffee', isBoldFont: false, textColor: Colors.deepPurple.shade800, textSize: 30),
      ],
    );
  }

  Widget _buildMySocialMediaAccountsIcon() {
    return Row(
      children: [
        const CustomText(text: 'Follow me', isBoldFont: false, textColor: Colors.grey),
        const Spacer(),
        _buildIcon(FontAwesomeIcons.github),
        _buildIcon(FontAwesomeIcons.linkedin),
        _buildIcon(FontAwesomeIcons.instagram),
      ],
    );
  }

  Widget _buildIcon(IconData icon) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5.0),
      child: Icon(icon, color: Colors.purple, size: 40,),
    );
  }
}
