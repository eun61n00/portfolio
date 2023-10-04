import 'package:flutter/material.dart';
import 'package:portfolio/widget/description_card.dart';
import 'package:portfolio/widget/keyword.dart';

class ProjectCard1 extends StatelessWidget {
  const ProjectCard1({
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
                    keyword: "Project 1",
                  ),
                  Text(
                    "운동 자세 교정 및 기록 어플리케이션 개발",
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
                            "23.04 – 23.09 / 팀프로젝트\nPose estimation 모델을 사용하여 운동 종목에 따른\n운동 자세를 교정하고 운동을 기록할 수 있는 어플리케이션",
                      ),
                      SizedBox(height: height / 30),
                      const DescriptionCard(
                        title: "Role",
                        desc: "Flutter 프레임워크를 사용하여 프론트엔드 개발\n\n",
                      ),
                      SizedBox(height: height / 30),
                      const DescriptionCard(
                        title: "Skill",
                        image_dir: "assets/images/project2_skill.png",
                      ),
                    ],
                  ),
                  Image.asset(
                    "assets/images/project2_0.png",
                    width: width / 5,
                  ),
                  Image.asset(
                    "assets/images/project2_1.png",
                    width: width / 5,
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
