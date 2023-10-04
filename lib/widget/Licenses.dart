import 'package:flutter/material.dart';

import '../colors/colors.dart';

class LICENSES extends StatelessWidget {
  const LICENSES({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(MediaQuery.of(context).size.width / 60),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding:
                EdgeInsets.only(bottom: MediaQuery.of(context).size.width / 50),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  "LICENSES",
                  style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width / 60,
                      fontWeight: FontWeight.bold,
                      color: CJ_RED),
                ),
                // Container(
                //   width: MediaQuery.of(context).size.width / 2,
                //   height: 1,
                //   color: CJ_RED,
                // ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "21.09 - 22.11\n23.09 - 현재",
                style: TextStyle(
                  fontSize: MediaQuery.of(context).size.width / 100,
                ),
              ),
              Text(
                "마이셀럽스 데이터팀\n한국과학기술연구원 인공지능연구단",
                style: TextStyle(
                  fontSize: MediaQuery.of(context).size.width / 100,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
