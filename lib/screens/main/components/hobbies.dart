import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constants.dart';

class Hobbies extends StatelessWidget {
  const Hobbies({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(
              vertical: defaultPadding),
          child: Text(
            "Interests and Hobbies",
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ),
        HobbiesText(text: "Reading books"),
        HobbiesText(text: "Travelling"),
        HobbiesText(text: "DIY Projects"),
        HobbiesText(text: "Playing video games"),
      ],
    );
  }
}

class HobbiesText extends StatelessWidget {
  const HobbiesText({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding / 2),
      child: Row(
        children: [
          SvgPicture.asset("assets/icons/check.svg"),
          SizedBox(width: defaultPadding / 2),
          Text(text),
        ],
      ),
    );
  }
}