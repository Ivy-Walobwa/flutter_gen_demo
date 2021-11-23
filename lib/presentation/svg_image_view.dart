import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SVGImageView extends StatelessWidget {
  const SVGImageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      direction: Axis.vertical,
      spacing: 16,
      children: [
        Text("SVG Image", style: Theme.of(context).textTheme.headline2),
        SvgPicture.asset(
          "assets/images/book_lover.svg",
          height: 300,
          width:300,
        ),
        const Text(
          "Scroll horizontally to view next asset",
        ),
      ],
    );
  }
}
