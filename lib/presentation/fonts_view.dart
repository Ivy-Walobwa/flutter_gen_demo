import 'package:flutter/material.dart';

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
          style: TextStyle(fontFamily: 'RobotoMono'),
        ),
        const Text("This is RobotoMono font - bold",
            style: TextStyle(
                fontFamily: 'RobotoMono', fontWeight: FontWeight.w700)),
        const Text("This is RobotoMono font - italic",
            style: TextStyle(
                fontFamily: 'RobotoMono', fontStyle: FontStyle.italic)),

        const Text(
          "Scroll horizontally to view next asset",
        ),
      ],
    );
  }
}
