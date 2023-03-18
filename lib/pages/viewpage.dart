import 'package:flutter/material.dart';
import 'package:flutter_project/components/postCard.dart';
import 'package:flutter_project/data.dart' as lib;

class ViewPage extends StatelessWidget {
  const ViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: ListView(
        children: [for (lib.Post p in lib.posts!) PostCard(p: p)],
      )),
    );
  }
}
