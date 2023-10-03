import 'package:flutter/material.dart';
import 'package:portfolio/effect/glass_morphism.dart';
import 'package:portfolio/widget/activity_card_0.dart';
import 'package:portfolio/widget/project_card_0.dart';
import 'package:portfolio/widget/project_card_1.dart';
import 'package:portfolio/widget/project_card_2.dart';

class ActivityGlassMorphismCard extends StatelessWidget {
  const ActivityGlassMorphismCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Stack(
      children: [
        SingleChildScrollView(
          child: GlassMorphism(
            start: 0.3,
            end: 0.7,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: width / 20,
                    vertical: width / 40,
                  ),
                  child: ActivityCard0(width: width, height: height),
                ),
              ],
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(
                  Icons.close,
                  color: Colors.white,
                  size: MediaQuery.of(context).size.width / 40,
                )),
          ],
        ),
      ],
    );
  }
}
