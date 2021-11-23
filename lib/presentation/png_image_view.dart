import 'package:flutter/material.dart';
import '../gen/assets.gen.dart';

class PNGImageView extends StatelessWidget {
  const PNGImageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      direction: Axis.vertical,
      spacing: 8,
      children: [
        Text("PNG Image", style: Theme.of(context).textTheme.headline2),
        Assets.images.addColor.image(width: 400, height: 400),

        const Text(
          "Scroll horizontally to view next asset",
        ),
      ],
    );
  }
}
