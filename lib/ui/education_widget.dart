import 'package:flutter/material.dart';

import '../constants/strings.dart';
import '../constants/text_styles.dart';
import '../models/education.dart';

class EducationWidget extends StatelessWidget {
  const EducationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        _buildEducationContainerHeading(),
        SizedBox(height: 8.0),
        _buildEducationTimeline(),
      ],
    );
  }
}

Widget _buildEducationContainerHeading() {
  return Text(
    Strings.education,
    style: TextStyles.subheading,
  );
}

Widget _buildEducationTimeline() {
  final List<Widget> widgets = Strings.educationList
      .map((education) => _buildEducationTile(education))
      .toList();
  return Column(children: widgets);
}

Widget _buildEducationTile(Education education) {
  return Padding(
    padding: EdgeInsets.symmetric(vertical: 8.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Text(
          '${education.degree}',
          style: TextStyles.company,
        ),
        Text(
          '${education.institution}',
          style: TextStyles.body.copyWith(
            color: Color(0xFF45405B),
          ),
        ),
        Text(
          '${education.from}-${education.to}',
          style: TextStyles.body,
        ),
      ],
    ),
  );
}
