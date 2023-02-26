import '../models/education.dart';

class Strings {
  Strings._();

  static const String about_me = 'About Me';
  static const String about = 'About';
  static const String me = ' Me';
  static const String FirstName = 'Firstname';
  static const String LastName = 'Lastname';
  static const String headline = 'Your headline here!';
  static const String summary =
      'Lorem Ipsum is simply dummy text of the printing and typesetting industry.';
  static const String experience = 'Experience';
  static const String skills_i_have = 'What Skill I Have';
  static const String rights_reserved = '';

  // menu items
  static const String menu_home = 'Home';
  static const String menu_about = 'About';
  static const String menu_contact = 'Contact';

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

  // Education
  static const String educationSummary =
      'Lorem Ipsum is simply dummy text of the printing and typesetting industry.';
  static List<Education> educationList = [
    Education(
      'Apr 2018',
      'Present',
      'Embrace-it Pakistan',
      'Sr. Software Engineer',
    ),
    Education(
      'Apr 2016',
      'Apr 2018',
      'TEO International',
      'Sr. Software Engineer',
    ),
    Education(
      'July 2014',
      'March 2016',
      'Citrusbits',
      'Software Engineer',
    ),
  ];
}
