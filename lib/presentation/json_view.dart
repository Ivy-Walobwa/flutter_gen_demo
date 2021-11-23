import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class JSONView extends StatefulWidget {
  const JSONView({Key? key}) : super(key: key);

  @override
  State<JSONView> createState() => _JSONViewState();
}

class _JSONViewState extends State<JSONView> {
  dynamic assets;

  loadJson() async {
    final String response =
        await rootBundle.loadString("assets/json/assets_tye.json");
    final data = await json.decode(response);
    setState(() {
      assets = data;
    });
  }

  @override
  void initState() {
    super.initState();
    loadJson();
  }

  @override
  Widget build(BuildContext context) {
    return Column(

      children: [
        Text("JSON Asset",
            style: Theme.of(context).textTheme.headline2),
        Expanded(
          child: assets == null ?Container() :ListView.builder(
            itemBuilder: (context, index) => Text(assets['asset$index'], style: Theme.of(context).textTheme.headline5,),
            itemCount: 7,
          ),
        ),

      ],
    );
  }
}
