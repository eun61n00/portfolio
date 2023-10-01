import 'package:flutter/material.dart';
import 'package:portfolio/colors/colors.dart';
import 'package:portfolio/effect/glass_morphism.dart';
import 'package:animate_gradient/animate_gradient.dart';
import 'package:portfolio/widget/glass_morphism_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimateGradient(
        duration: const Duration(seconds: 8),
        primaryColors: const [
          CJ_BLUE,
          CJ_BLUE_BETWEEN_YELLOW,
          CJ_YELLOW,
        ],
        secondaryColors: const [
          CJ_YELLOW,
          CJ_YELLOW_BETWEEN_RED,
          CJ_RED,
        ],
        child: Padding(
          padding:
              EdgeInsets.only(left: MediaQuery.of(context).size.width / 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text("동료와 소통하는 개발자,",
                      style: TextStyle(
                        fontSize: MediaQuery.of(context).size.width / 40,
                        fontFamily: "CJOnlyOne",
                      )),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        "권은빈",
                        style: TextStyle(
                          fontSize: MediaQuery.of(context).size.width / 20,
                          fontWeight: FontWeight.bold,
                          fontFamily: "CJOnlyOne-title",
                        ),
                      ),
                      Text(
                        "입니다.",
                        style: TextStyle(
                          fontSize: MediaQuery.of(context).size.width / 40,
                        ),
                      ),
                    ],
                  ),
                  // GlassMorphismCard(),
                ],
              ),
              Image.asset(
                "assets/images/main.png",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
