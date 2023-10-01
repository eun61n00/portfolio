import 'package:flutter/material.dart';
import 'package:scroll_navigation/scroll_navigation.dart';

class ScrollNavigationScreen extends StatelessWidget {
  const ScrollNavigationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScrollNavigation(
      bodyStyle: NavigationBodyStyle(
        background: Colors.white,
        borderRadius: BorderRadius.horizontal(left: Radius.circular(20)),
        scrollDirection: Axis.vertical,
      ),
      barStyle: NavigationBarStyle(
        position: NavigationPosition.left,
        elevation: 0.0,
        background: Colors.white,
      ),
      pages: [
        Container(color: Colors.blue[100]),
        Container(color: Colors.green[100]),
        Container(color: Colors.purple[100]),
        Container(color: Colors.amber[100]),
        Container(color: Colors.deepOrange[100])
      ],
      items: const [
        ScrollNavigationItem(icon: Icon(Icons.camera)),
        ScrollNavigationItem(icon: Icon(Icons.chat)),
        ScrollNavigationItem(icon: Icon(Icons.favorite)),
        ScrollNavigationItem(icon: Icon(Icons.notifications)),
        ScrollNavigationItem(icon: Icon(Icons.home))
      ],
    );
  }
}
