import 'package:flutter/material.dart';
import 'png_image_view.dart';
import 'svg_image_view.dart';
import 'video_view.dart';
import 'animation_view.dart';
import 'fonts_view.dart';
import 'json_view.dart';

class  MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Asset Generator Demo',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: Scaffold(
        appBar: AppBar(title: const Text(
          "flutter_gen demo",
        ),),
        body: Padding(
          padding: const EdgeInsets.all(24),
          child: PageView(children: const[
            PNGImageView(),
            SVGImageView(),
            VideoView(),
            AnimationView(),
            FontsView(),
            JSONView(),
          ],),
        ),
      ),
    );
  }}
