import 'dart:async';

import 'package:flutter/material.dart';
import 'package:dinesh_portfolio/core/config/styles/text_style.dart';
import 'package:dinesh_portfolio/presentation/widgetss/text_widget.dart';

class BuildSkillCard extends StatefulWidget {
  const BuildSkillCard({
    this.skillsList,
    super.key,
  });
  final List<String>? skillsList;
  @override
  State<BuildSkillCard> createState() => _BuildSkillCardState();
}

class _BuildSkillCardState extends State<BuildSkillCard> {
  final double height = 5;
  final List<Color> colors = [
    Colors.blue,
    Colors.red,
    Colors.green,
  ];
  Color? highLightColor;
  Timer? timer;
  @override
  void initState() {
    super.initState();
    //highLightColor = colors.first;
    // timer = Timer.periodic(
    //   const Duration(microseconds: 500),
    //   (timer) {
    //     setState(
    //       () {
    //         highLightColor = colors[Random().nextInt(colors.length)];
    //       },
    //     );
    //   },
    // );
  }

  @override
  void dispose() {
    super.dispose();
    timer?.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return Wrap(
      // mainAxisAlignment: MainAxisAlignment.start,
      // crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //
        Row(
          children: [
            TextWidget(
              label: "Skill Set",
              style: getTextStyle(
                fontSize: 20,
                color: Colors.cyan,
              ),
            ),
          ],
        ),

        ...widget.skillsList!
            .map(
              (skill) => SizedBox(
                width: 150,
                // height: 25,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Wrap(
                    direction: Axis.horizontal,
                    children: [
                      // SizedBox.square(
                      //   dimension: height,
                      //   child: const
                      // ),
                      // const RotatedBox(
                      //   quarterTurns: 2,
                      //   child: Icon(
                      //     Icons.arrow_back,
                      //     // size: 18,
                      //     color: Colors.black,
                      //   ),
                      // ),
                      const Icon(
                        Icons.play_arrow,
                        color: Colors.cyan,
                      ),

                      Padding(
                        padding: const EdgeInsets.only(top: 5),
                        child: TextWidget(
                          label: skill,
                          style:
                              getTextStyle(fontSize: 15, color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
            .toList(),
      ],
    );
  }
}
