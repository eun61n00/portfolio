import 'package:flutter/material.dart';
import 'package:portfolio/widget/description_card.dart';
import 'package:portfolio/widget/keyword.dart';

class ActivityCard0 extends StatelessWidget {
  const ActivityCard0({
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
          child: Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const Keyword(
                      keyword: "Acitivity 0",
                    ),
                    Text(
                      "SKT 데보션영 1기",
                      style: TextStyle(
                        fontSize: width / 50,
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    Column(
                      children: [
                        const DescriptionCard(
                          title: "Introduction",
                          desc:
                              "22.07 – 22.12 / 대외활동 / SKT\n대학생 테크 인플루언서 데보션영 1기 우수활동자 선정\nSK Tech Summit, Tech Semina 행사 참석\n블로그 포스팅\n다독다독 클린코드 스터디\n데보션 웹 개선사항 건의 및 코드 개선",
                        ),
                        SizedBox(height: height / 30),
                        const DescriptionCard(
                          title: "# 커뮤니티의 힘\n# 소통으로 배우는 기술",
                        ),
                        SizedBox(height: height / 30),
                      ],
                    ),
                    Image.asset(
                      "assets/images/activities1.png",
                      width: width / 5 * 2,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}
