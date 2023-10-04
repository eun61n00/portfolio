import 'package:flutter/material.dart';
import 'package:portfolio/colors/colors.dart';

class Keyword extends StatelessWidget {
  final String keyword;
  final double? width_fixed;
  final double? height_fixed;

  const Keyword(
      {super.key, required this.keyword, this.width_fixed, this.height_fixed});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    return Padding(
      padding: EdgeInsets.all(width / 100),
      child: Container(
        height: height_fixed != null ? height_fixed : width / 25,
        width: width_fixed != null ? width_fixed : width / 8,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          border: Border.all(
            color: Colors.black,
            width: 1,
          ),
          gradient: const LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              CJ_RED,
              CJ_YELLOW_BETWEEN_RED,
              CJ_YELLOW,
            ],
          ),
        ),
        child: Center(
          child: Text(keyword,
              style: TextStyle(
                fontSize: width / 60,
                fontFamily: "CJOnlyOne",
                color: Colors.white,
              )),
        ),
      ),
    );
  }
}
