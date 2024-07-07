

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../domain/models/frontend_technology.dart';

const List<FrontendTechnology> frontendTechnologies = [
  FrontendTechnology(icon: FontAwesomeIcons.html5, name: 'Html', backgroundColor: Colors.red),
  FrontendTechnology(icon: FontAwesomeIcons.css3, name: 'Css', backgroundColor: Colors.purpleAccent),
  FrontendTechnology(icon: FontAwesomeIcons.js, name: 'JavaScript', backgroundColor: Colors.yellow),
  FrontendTechnology(
      icon: FontAwesomeIcons.angular, name: 'Angular-Js', backgroundColor: Color(0xFF1F46FF)),
  FrontendTechnology(
      icon: FontAwesomeIcons.bootstrap, name: 'Bootstrap', backgroundColor: Colors.deepOrange),
];
