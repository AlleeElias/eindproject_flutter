import 'package:flutter/material.dart';
import 'package:flutter_project/components/navigationbar.dart';

class OpenScreenPage extends StatefulWidget {
  const OpenScreenPage({super.key});

  @override
  State<OpenScreenPage> createState() => _OpenScreenState();
}

class _OpenScreenState extends State<OpenScreenPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        children: const <Widget>[
          Text('Dit is het nieuwe scherm'),
        ],
      )),
    );
  }
}
