import 'package:flutter/material.dart';

class OpenScreenPage extends StatefulWidget {
  const OpenScreenPage({super.key});

  @override
  State<OpenScreenPage> createState() => _OpenScreenState();
}

class _OpenScreenState extends State<OpenScreenPage> {
  String welkomstring =
      "Welkom in deze simpele demo app. Deze app is enkel om te tonen dat ik weet hoe flutter werkt. Bedankt om tijd te maken om te bekijken hoe de app werkt.";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        children: [
          Expanded(
            flex: 10,
            child: Image.asset("images/profilepic.jpeg"),
          ),
          Text(welkomstring)
        ],
      )),
    );
  }
}
