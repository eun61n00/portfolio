import 'package:flutter/material.dart';
import 'package:portfolio/widget/description_card.dart';
import 'package:portfolio/widget/keyword.dart';

class ProjectCard2 extends StatelessWidget {
  const ProjectCard2({
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
                    keyword: "Project 2",
                  ),
                  Text(
                    "여행 계획 수립 및 경비 정산 어플리케이션",
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
                            "23.07 – 23.09 / 팀프로젝트\n여러명이 여행 계획을 짜고 \n여행 경비를 정산할 수 있는 어플리케이션",
                      ),
                      SizedBox(height: height / 30),
                      const DescriptionCard(
                        title: "Role",
                        desc: "Spring 프레임워크를 사용하여 서버 개발\nDocker 컨테이너를 이용해 배포\n",
                      ),
                      SizedBox(height: height / 30),
                      DescriptionCard(
                        title: "Skill",
                        image_dir: "assets/images/project3_skill.png",
                        image_size: width / 10,
                      ),
                    ],
                  ),
                  Image.asset(
                    "assets/images/project3_0.png",
                    width: width / 5 * 2,
                  ),
                  // Image.asset(
                  //   "assets/images/project2_1.png",
                  //   width: width / 5,
                  // ),
                ],
              ),
            ],
          ),
        ));
  }
}
