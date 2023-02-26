import 'package:flutter/material.dart';

import '../constants/strings.dart';
import '../constants/text_styles.dart';
import '../models/experience.dart';

class ExperienceWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        _buildExperienceContainerHeading(),
        _buildExperienceSummary(),
        SizedBox(height: 8.0),
        _buildExperienceTimeline(),
      ],
    );
  }
}

Widget _buildExperienceContainerHeading() {
  return Text(
    Strings.experience,
    style: TextStyles.subheading,
  );
}

Widget _buildExperienceSummary() {
  return Text(
    Strings.experienceSummary,
    style: TextStyles.body,
  );
}

Widget _buildExperienceTimeline() {
  final List<Widget> widgets = Strings.experienceList
      .map((experience) => _buildExperienceTile(experience))
      .toList();
  return Column(children: widgets);
}

Widget _buildExperienceTile(Experience experience) {
  return Padding(
    padding: EdgeInsets.symmetric(vertical: 8.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Text(
          '${experience.title}',
          style: TextStyles.company,
        ),
        Text(
          '${experience.organization}',
          style: TextStyles.body.copyWith(
            color: Color(0xFF45405B),
          ),
        ),
        Text(
          '${experience.from}-${experience.to}',
          style: TextStyles.body,
        ),
      ],
    ),
  );
}
