import 'package:animate_gradient/animate_gradient.dart';
import 'package:flutter/material.dart';
import 'package:scroll_navigation/scroll_navigation.dart';

import '../colors/colors.dart';

class ProjectScreen extends StatelessWidget {
  const ProjectScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ScrollNavigation(
          bodyStyle: const NavigationBodyStyle(
            background: Colors.white,
            borderRadius: BorderRadius.horizontal(left: Radius.circular(5)),
            scrollDirection: Axis.vertical,
          ),
          barStyle: const NavigationBarStyle(
              position: NavigationPosition.left,
              elevation: 3,
              background: Colors.white),
          pages: [
            Container(
              child: AnimateGradient(
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
                child: null,
              ),
            ),
            Container(color: Colors.green[100]),
            Container(color: Colors.purple[100]),
            Container(color: Colors.amber[100]),
            Container(color: Colors.deepOrange[100]),
          ],
          items: const [
            ScrollNavigationItem(icon: Icon(Icons.camera)),
            ScrollNavigationItem(icon: Icon(Icons.chat)),
            ScrollNavigationItem(icon: Icon(Icons.favorite)),
            ScrollNavigationItem(icon: Icon(Icons.notifications)),
            ScrollNavigationItem(icon: Icon(Icons.home))
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.close,
                color: Colors.white,
                size: 32,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
