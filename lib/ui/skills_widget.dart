import 'package:flutter/material.dart';

import '../constants/strings.dart';
import '../constants/text_styles.dart';
import '../widgets/responsive_widget.dart';

class SkillsWidget extends StatelessWidget {
  const SkillsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Widget> widgets = Strings.skills
        .map((skill) => Padding(
              padding: EdgeInsets.only(right: 8.0),
              child: _buildSkillChip(context, skill),
            ))
        .toList();

    return Column(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        _buildSkillsContainerHeading(),
        Wrap(children: widgets),
      ],
    );
  }
}

Widget _buildSkillsContainerHeading() {
  return Text(
    Strings.skillsTitle,
    style: TextStyles.subheading,
  );
}

Widget _buildSkillChip(BuildContext context, String label) {
  return Chip(
    label: Text(
      label,
      style: TextStyles.chip.copyWith(
        fontSize: ResponsiveWidget.isSmallScreen(context) ? 10.0 : 11.0,
      ),
    ),
  );
}
