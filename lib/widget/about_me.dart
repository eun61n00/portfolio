import 'package:flutter/material.dart';
import 'package:portfolio/colors/colors.dart';
import 'package:portfolio/effect/glass_morphism.dart';

import 'activities_desc.dart';
import 'Experiences.dart';

class GlassMorphismCard extends StatelessWidget {
  const GlassMorphismCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Stack(
        children: [
          GlassMorphism(
            start: 0.5,
            end: 0.7,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Activities(),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/images/id_img.png",
                      height: MediaQuery.of(context).size.width / 4,
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: width / 100),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: CJ_RED,
                          border: Border.all(
                            color: Colors.white,
                            width: 1,
                          ),
                        ),
                        width: width / 10,
                        height: height / 20,
                        child: Center(
                          child: Text(
                            "권은빈",
                            style: TextStyle(
                                fontSize: width / 60, color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: width / 100),
                      child: Text(
                        "eun61n@gmail.com",
                        style: TextStyle(
                            fontSize: width / 70, color: Colors.white),
                      ),
                    ),
                  ],
                ),
                Experiences(),
              ],
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
      ),
    );
  }
}
