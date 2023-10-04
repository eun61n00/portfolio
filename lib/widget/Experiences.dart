import 'package:flutter/material.dart';

import '../colors/colors.dart';

class Experiences extends StatelessWidget {
  const Experiences({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: MediaQuery.of(context).size.width / 60,
        right: MediaQuery.of(context).size.width / 20,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      bottom: MediaQuery.of(context).size.width / 100),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "EXPERIENCES",
                        style: TextStyle(
                          fontSize: MediaQuery.of(context).size.width / 60,
                          fontWeight: FontWeight.bold,
                          color: CJ_RED,
                          shadows: const <Shadow>[
                            Shadow(
                              offset: Offset(1, 1),
                              blurRadius: 1.0,
                              color: Colors.black87,
                            ),
                            Shadow(
                              offset: Offset(1, 1),
                              blurRadius: .0,
                              color: Colors.black87,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width / 3.5,
                  child: Padding(
                    padding:
                        EdgeInsets.all(MediaQuery.of(context).size.width / 90),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "21.09 - 22.11\n23.09 - 현재",
                          style: TextStyle(
                            fontSize: MediaQuery.of(context).size.width / 90,
                            height: 1.5,
                          ),
                        ),
                        Text(
                          "마이셀럽스 데이터팀\n한국과학기술연구원 인공지능연구단",
                          style: TextStyle(
                            fontSize: MediaQuery.of(context).size.width / 90,
                            height: 1.5,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding:
                EdgeInsets.only(top: MediaQuery.of(context).size.width / 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      bottom: MediaQuery.of(context).size.width / 100),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "LICENSES",
                        style: TextStyle(
                          fontSize: MediaQuery.of(context).size.width / 60,
                          fontWeight: FontWeight.bold,
                          color: CJ_RED,
                          shadows: const <Shadow>[
                            Shadow(
                              offset: Offset(1, 1),
                              blurRadius: 1.0,
                              color: Colors.black87,
                            ),
                            Shadow(
                              offset: Offset(1, 1),
                              blurRadius: .0,
                              color: Colors.black87,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width / 3.5,
                  child: Padding(
                    padding:
                        EdgeInsets.all(MediaQuery.of(context).size.width / 90),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "21.04\n21.12\n23.06",
                          style: TextStyle(
                            fontSize: MediaQuery.of(context).size.width / 90,
                            height: 1.5,
                          ),
                        ),
                        Text(
                          "데이터분석준전문가(ADsP)\nSQL개발자(SQLD)\n정보처리기사",
                          style: TextStyle(
                            fontSize: MediaQuery.of(context).size.width / 90,
                            height: 1.5,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
