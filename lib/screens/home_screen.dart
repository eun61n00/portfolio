import 'package:flutter/material.dart';
import 'package:portfolio/colors/colors.dart';
import 'package:animate_gradient/animate_gradient.dart';
import 'package:portfolio/scroll_navigation_screen.dart';
import 'package:portfolio/widget/Activities.dart';
import 'package:portfolio/widget/activities_desc.dart';
import 'package:portfolio/widget/Experiences.dart';
import 'package:portfolio/widget/about_me.dart';
import 'package:portfolio/widget/projects.dart';
import 'package:portfolio/widget/values.dart';
import 'package:scroll_navigation/scroll_navigation.dart';
import 'package:xen_popup_card/xen_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimateGradient(
        duration: const Duration(seconds: 4),
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
                  Text("동료와 소통하며 성장하는 개발자,",
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
                          fontSize: MediaQuery.of(context).size.width / 15,
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
                  SizedBox(height: MediaQuery.of(context).size.height / 20),
                  const AboutButton(textLable: "About Me"),
                  SizedBox(height: MediaQuery.of(context).size.height / 40),
                  const ValueButton(textLable: "Values"),
                  SizedBox(height: MediaQuery.of(context).size.height / 40),
                  const ProjectButton(textLable: "Projects"),
                  SizedBox(height: MediaQuery.of(context).size.height / 40),
                  const ActivityButton(textLable: "Activities"),
                ],
              ),
              Container(
                child: Image.asset(
                  "assets/images/main.png",
                  width: MediaQuery.of(context).size.width / 2,
                  fit: BoxFit.fitWidth,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class AboutButton extends StatelessWidget {
  final String textLable;
  const AboutButton({
    super.key,
    required this.textLable,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: () {
        showDialog(
          context: context,
          builder: (builder) => GlassMorphismCard(),
        );
      },
      icon: const Icon(
        Icons.arrow_forward_rounded,
        size: 20.0,
      ),
      label: Text(textLable, style: TextStyle(fontSize: 20.0)),
      style: TextButton.styleFrom(
        foregroundColor: Colors.white,
        backgroundColor: Colors.white.withOpacity(0.2),
        disabledForegroundColor: Colors.grey.withOpacity(0.38),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
      ),
    );
  }
}

class ProjectButton extends StatelessWidget {
  final String textLable;
  const ProjectButton({
    super.key,
    required this.textLable,
  });

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    return TextButton.icon(
      onPressed: () {
        showDialog(
            context: context, builder: (builder) => ProjectGlassMorphismCard());
      },
      icon: const Icon(
        Icons.arrow_forward_rounded,
        size: 20.0,
      ),
      label: Text(textLable, style: TextStyle(fontSize: width / 80)),
      style: TextButton.styleFrom(
        foregroundColor: Colors.white,
        backgroundColor: Colors.white.withOpacity(0.2),
        disabledForegroundColor: Colors.grey.withOpacity(0.38),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
      ),
    );
  }
}

class ValueButton extends StatelessWidget {
  final String textLable;
  const ValueButton({
    super.key,
    required this.textLable,
  });

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    return TextButton.icon(
      onPressed: () {
        showDialog(
            context: context, builder: (builder) => ValueGlassMorphismCard());
      },
      icon: const Icon(
        Icons.arrow_forward_rounded,
        size: 20.0,
      ),
      label: Text(textLable, style: TextStyle(fontSize: width / 80)),
      style: TextButton.styleFrom(
        foregroundColor: Colors.white,
        backgroundColor: Colors.white.withOpacity(0.2),
        disabledForegroundColor: Colors.grey.withOpacity(0.38),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
      ),
    );
  }
}

class ActivityButton extends StatelessWidget {
  final String textLable;
  const ActivityButton({
    super.key,
    required this.textLable,
  });

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    return TextButton.icon(
      onPressed: () {
        showDialog(
            context: context,
            builder: (builder) => ActivityGlassMorphismCard());
      },
      icon: const Icon(
        Icons.arrow_forward_rounded,
        size: 20.0,
      ),
      label: Text(textLable, style: TextStyle(fontSize: width / 80)),
      style: TextButton.styleFrom(
        foregroundColor: Colors.white,
        backgroundColor: Colors.white.withOpacity(0.2),
        disabledForegroundColor: Colors.grey.withOpacity(0.38),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
      ),
    );
  }
}
