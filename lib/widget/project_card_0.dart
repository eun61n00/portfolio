import 'package:flutter/material.dart';
import 'package:portfolio/widget/description_card.dart';
import 'package:portfolio/widget/keyword.dart';

class ProjectCard extends StatelessWidget {
  const ProjectCard({
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
                    keyword: "Project 0",
                  ),
                  Text(
                    "AI 졸업사진 생성 어플리케이션 개발",
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
                            "23.07 – 23.09 / 팀프로젝트\nDreamBooth 모델을 사용하여 사용자의 얼굴을 학습하여\n졸업사진을 생성해주는 어플리케이션",
                      ),
                      SizedBox(height: height / 30),
                      const DescriptionCard(
                        title: "Role",
                        desc:
                            "Flutter 프레임워크를 사용하여 프론트엔드 개발\nDjango 프레임워크를 사용하여 백엔드 개발\nDocker 컨테이너를 사용하여 배포",
                      ),
                      SizedBox(height: height / 30),
                      const DescriptionCard(
                        title: "Skill",
                        image_dir: "assets/images/project1_skill.png",
                      ),
                    ],
                  ),
                  Image.asset(
                    "assets/images/project1_0.png",
                    width: width / 5,
                  ),
                  Image.asset(
                    "assets/images/project1_1.png",
                    width: width / 5,
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
