import 'package:flutter/material.dart';
import 'package:flutter_profile/components/animated_progress_indicator.dart';

import '../../../constants.dart';

class Coding extends StatelessWidget {
  const Coding({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding),
          child: Text(
            "Programming Languages",
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.7,
          label: "Dart",
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.6,
          label: "Python",
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.65,
          label: "C++",
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.75,
          label: "Java",
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.58,
          label: "PHP",
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.9,
          label: "HTML & CSS",
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.85,
          label: "MYSQL",
        ),
      ],
    );
  }
}
