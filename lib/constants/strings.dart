import '../models/experience.dart';

class Strings {
  Strings._();

  static const String about = 'About';
  static const String me = ' Me';
  static const String firstName = 'Firstname';
  static const String lastName = 'Lastname';
  static const String headline = 'Your headline here!';
  static const String summary =
      'Lorem Ipsum is simply dummy text of the printing and typesetting industry.';
  static const String experience = 'Experience';
  static const String education = 'Education';
  static const String skillsTitle = 'What Skill I Have';
  static const String rightsReserved = '';

  // Menu Items
  static const String menuHome = 'Home';
  static const String menuAbout = 'About';
  static const String menuContact = 'Contact';

  // Skills
  static const List<String> skills = [
    'Java',
    'Kotlin',
    'Dart',
    'Flutter',
    'Android',
    'iOS',
    'Xamarin',
    'Reactive Programming',
    'Jenkins',
    'Photoshop',
    'JFrog Atrtifactory',
    'Code Magic',
  ];

  // Experience
  static const String experienceSummary =
      'Lorem Ipsum is simply dummy text of the printing and typesetting industry.';
  static List<Experience> experienceList = [
    Experience(
      'Apr 2018',
      'Present',
      'Embrace-it Pakistan',
      'Sr. Software Engineer',
    ),
    Experience(
      'Apr 2016',
      'Apr 2018',
      'TEO International',
      'Sr. Software Engineer',
    ),
    Experience(
      'July 2014',
      'March 2016',
      'Citrusbits',
      'Software Engineer',
    ),
  ];
}
