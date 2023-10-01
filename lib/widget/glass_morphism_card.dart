import 'package:flutter/material.dart';
import 'package:portfolio/effect/glass_morphism.dart';

class GlassMorphismCard extends StatelessWidget {
  const GlassMorphismCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        height: 100,
        width: 200,
        child: const GlassMorphism(
          child: Text(""),
          start: 0.1,
          end: 0.5,
        ),
      ),
    );
  }
}
