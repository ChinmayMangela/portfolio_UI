import '../domain/models/technology.dart';

final Map<String, List<Technology>> technologiesList = {
  'Publications in both stores': publications,
  'Front-end engineer designs': frontendEngineerDesigns,
  'Languages': programmingLanguages,
  'Devops': devopsTechs,
  'Backend': backendTechnologies,
};

final List<Technology> devopsTechs = [
  Technology(
      iconUrl: 'assets/images/icons/github_actions_icon.png',
      name: 'Github actions'),
  Technology(iconUrl: 'assets/images/icons/nginx_icon.png', name: 'Nginx'),
  Technology(iconUrl: 'assets/images/icons/docker_icon.png', name: 'Docker'),
];

final List<Technology> publications = [
  Technology(
      iconUrl: 'assets/images/icons/app_store_icon.png', name: 'App Store'),
  Technology(
      iconUrl: 'assets/images/icons/play_store_icon.png', name: 'Play Store'),
];

final List<Technology> frontendEngineerDesigns = [
  Technology(
      iconUrl: 'assets/images/icons/react_js_icon.png', name: 'React Js'),
  Technology(iconUrl: 'assets/images/icons/next_js_icon.png', name: 'Next Js'),
  Technology(
      iconUrl: 'assets/images/icons/react_native_icon.png',
      name: 'React Native'),
  Technology(iconUrl: 'assets/images/icons/vite_icon.png', name: 'Vite'),
  Technology(iconUrl: 'assets/images/icons/figma_icon.png', name: 'Figma'),
];

final List<Technology> programmingLanguages = [
  Technology(
      iconUrl: 'assets/images/icons/javascript_icon.png', name: 'JavaScript'),
  Technology(
      iconUrl: 'assets/images/icons/typescript_icon.png', name: 'TypeScript'),
];

final List<Technology> backendTechnologies = [
  Technology(iconUrl: 'assets/images/icons/nodejs_icon.png', name: 'Node Js'),
  Technology(iconUrl: 'assets/images/icons/prisma_icon.png', name: 'Prisma'),
];
