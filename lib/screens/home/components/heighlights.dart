import 'package:flutter/material.dart';
import 'package:flutter_profile/components/animated_counter.dart';
import 'package:flutter_profile/responsive.dart';

import '../../../constants.dart';
import 'heigh_light.dart';

class HighLightsInfo extends StatelessWidget {
  const HighLightsInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding, horizontal: 5),
      child: Responsive.isMobileLarge(context)
          ? Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    HeightLight(
                      counter: AnimatedCounter(
                        value: 20,
                        text: "+",
                      ),
                      label: "GitHub Projects",
                    ),
                    HeightLight(
                      counter: AnimatedCounter(
                        value: 3,
                        text: "",
                      ),
                      label: "Stars",
                    ),
                  ],
                ),
              ],
            )
          : Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                HeightLight(
                  counter: AnimatedCounter(
                    value: 20,
                    text: "+",
                  ),
                  label: "GitHub Projects",
                ),
                HeightLight(
                  counter: AnimatedCounter(
                    value: 3,
                    text: "",
                  ),
                  label: "Stars",
                ),
              ],
            ),
    );
  }
}
