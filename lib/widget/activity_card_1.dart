import 'package:flutter/material.dart';
import 'package:portfolio/widget/description_card.dart';
import 'package:portfolio/widget/keyword.dart';

class ActivityCard1 extends StatelessWidget {
  const ActivityCard1({
    super.key,
    required this.width,
    required this.height,
  });

  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.black,
          ),
          borderRadius: BorderRadius.circular(10),
          color: Colors.white.withOpacity(0.9),
        ),
        child: Padding(
          padding: EdgeInsets.all(width / 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const Keyword(
                    keyword: "Acitivity 1",
                  ),
                  Text(
                    "42서울 교육생 6기",
                    style: TextStyle(
                      fontSize: width / 50,
                    ),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      const DescriptionCard(
                        title: "Introduction",
                        desc:
                            "22.01 – 22.11 / 교육 / 이노베이션아카데미\n1개월의 선발과정와 10개월의 본과정 참여\nC 라이브러리 구현, 운영체제, 알고리즘 과제 수행\n100번 이상의 동료 평가 진행",
                      ),
                      SizedBox(height: height / 30),
                      const DescriptionCard(
                        title: "# 밀도있는 배움\n# 동료와의 폭발적 성장",
                      ),
                      SizedBox(height: height / 30),
                    ],
                  ),
                  Image.asset(
                    "assets/images/activities2.png",
                    width: width / 5 * 2,
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
