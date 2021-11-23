import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

class AnimationView extends StatefulWidget {
  const AnimationView({Key? key}) : super(key: key);

  @override
  _AnimationViewState createState() => _AnimationViewState();
}

class _AnimationViewState extends State<AnimationView> {
  late RiveAnimationController _animationController;
@override
  void initState() {
    super.initState();
    _animationController = SimpleAnimation('idle');
  }

  @override
  void dispose() {
    super.dispose();

    _animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Wrap(
      direction: Axis.vertical,
      spacing: 8,
      children: [
        Text("Animation Asset",
            style: Theme.of(context).textTheme.headline2),
        SizedBox(
          height: 200,
            width: 400,
            child: RiveAnimation.asset(
              "assets/animations/vehicles.riv",
              controllers: [_animationController],
              animations: const ['idle', 'curves'],
            )),
        const SizedBox(height: 16,),
        const Text(
          "Scroll horizontally to view next asset",
        ),
      ],
    );

  }
}
