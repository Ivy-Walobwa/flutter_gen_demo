import 'package:flutter/material.dart';
import '../gen/fonts.gen.dart';

class FontsView extends StatelessWidget {
  const FontsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      direction: Axis.vertical,
      spacing: 16,
      children: [
        Text("Fonts Asset", style: Theme.of(context).textTheme.headline2),
        const Text(
          "This is RobotoMono font - medium",
          style: TextStyle(fontFamily: FontFamily.robotoMono),
        ),
        const Text("This is RobotoMono font - bold",
            style: TextStyle(
                fontFamily: FontFamily.robotoMono, fontWeight: FontWeight.w700)),
        const Text("This is RobotoMono font - italic",
            style: TextStyle(
                fontFamily: FontFamily.robotoMono, fontStyle: FontStyle.italic)),

        const Text(
          "Scroll horizontally to view next asset",
        ),
      ],
    );
  }
}
