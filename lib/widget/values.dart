import 'package:flutter/material.dart';
import 'package:portfolio/effect/glass_morphism.dart';
import 'package:portfolio/widget/keyword.dart';

import 'activities_desc.dart';
import 'Experiences.dart';

class ValueGlassMorphismCard extends StatelessWidget {
  const ValueGlassMorphismCard({
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
            child: Padding(
              padding: EdgeInsets.only(right: width / 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    "권은빈이 추구하는 가치",
                    style: TextStyle(
                      fontSize: width / 30,
                      fontWeight: FontWeight.bold,
                      fontFamily: "CJOnlyOne-title",
                    ),
                  ),
                  SizedBox(height: height / 20),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Keyword(keyword: "#동료와의 성장"),
                      Keyword(keyword: "#유연한 태도"),
                      Keyword(keyword: "#소통"),
                    ],
                  ),
                  SizedBox(height: height / 7),
                  Padding(
                    padding: EdgeInsets.only(left: width / 10),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "42 서울에서 학습하며 동료와 함께 성장하는 것이 가장 확실하고 오래 지속될 수 있는 동기부여임을 깨달았습니다. \n동료에게서 배우는 자세로 임하여 서로가 서로에게 최고의 선생님이자 동료가 될 수 있는 팀문화를 만들겠습니다.\nCJ 올리브네트웍스에서 고객에게 행복과 편리함을 제공하기 위해 동료와 함께 성장하겠습니다.",
                          style: TextStyle(
                            fontSize: width / 70,
                            height: 2,
                          ),
                        ),
                      ],
                    ),
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
      ),
    );
  }
}
