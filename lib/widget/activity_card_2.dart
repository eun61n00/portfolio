import 'package:flutter/material.dart';
import 'package:portfolio/widget/description_card.dart';
import 'package:portfolio/widget/keyword.dart';

class ActivityCard2 extends StatelessWidget {
  const ActivityCard2({
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
                    keyword: "Acitivity 2",
                  ),
                  Text(
                    "각종 멘토링",
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
                            "대학생교육기부단 2019 겨울방학 쏙쏙캠프\n삼성카드 열린나눔 대학생 강사단 5, 6기\n현대건설 꿈키움 멘토링 대학생 봉사단 7기\nKT랜선야학 대학생 멘토 3, 4, 6기\nLG CNS AI Genius 대학생 서포터즈 7기",
                      ),
                      SizedBox(height: height / 30),
                      const DescriptionCard(
                        title: "# 꾸준함\n# 청소년과의 소통",
                      ),
                      SizedBox(height: height / 30),
                    ],
                  ),
                  Image.asset(
                    "assets/images/activities3.png",
                    width: width / 5 * 2,
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
