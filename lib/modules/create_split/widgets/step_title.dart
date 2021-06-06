import 'package:flutter/material.dart';

import 'package:split_it/theme/app_theme.dart';

class StepTitleWidget extends StatelessWidget {
  final String title;
  final String subtitle;

  const StepTitleWidget({
    Key? key,
    required this.title,
    required this.subtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        text: title,
        style: AppTheme.textStyles.stepperTitle,
        children: [
          TextSpan(text: subtitle, style: AppTheme.textStyles.stepperSubtitle)
        ],
      ),
      textAlign: TextAlign.center,
    );
  }
}
