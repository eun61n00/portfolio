import 'package:flutter/material.dart';

import '../colors/colors.dart';

class Activities extends StatelessWidget {
  const Activities({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: MediaQuery.of(context).size.width / 20,
        right: MediaQuery.of(context).size.width / 60,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Padding(
            padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).size.width / 100),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  "ACTIVITIES",
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
              padding: EdgeInsets.all(MediaQuery.of(context).size.width / 90),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "42서울 카뎃 6기\n데보션영 1기\n\n삼성카드 열린나눔 대학생 강사단 5, 6기\n현대건설 꿈키움 멘토링 대학생 봉사단 7기\nKT랜선야학 대학생 멘토 3, 4, 6기\nLG CNS AI Genius 대학생 서포터즈 7기",
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width / 90,
                      height: 1.5,
                    ),
                  ),
                  Text(
                    "22.01 - 22.11\n22.07 - 22.12\n\n20.03 - 21.12\n20.11 - 21.08\n21.12 – 현재\n22.03 – 22.06",
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
    );
  }
}
