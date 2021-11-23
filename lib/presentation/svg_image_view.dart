import 'package:flutter/material.dart';
import '../gen/assets.gen.dart';

class SVGImageView extends StatelessWidget {
  const SVGImageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      direction: Axis.vertical,
      spacing: 16,
      children: [
        Text("SVG Image", style: Theme.of(context).textTheme.headline2),
        Assets.images.bookLover.svg(width: 300, height: 300),
        const Text(
          "Scroll horizontally to view next asset",
        ),
      ],
    );
  }
}
