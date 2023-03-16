import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project/data.dart' as lib;

class ViewPage extends StatefulWidget {
  const ViewPage({super.key});

  @override
  State<ViewPage> createState() => _ViewPageState();
}

class _ViewPageState extends State<ViewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: ListView(
        children: [
          for (lib.Post p in lib.posts!)
            Container(
              child: Column(children: [
                Row(
                  children: [Text(p.title)],
                ),
                Row(
                  children: [
                    Expanded(
                      child: Image.asset(p.image),
                      flex: 10,
                    )
                  ],
                )
              ]),
            )
        ],
      )),
    );
  }
}
