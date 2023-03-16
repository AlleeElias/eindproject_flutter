import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Image.asset("images/profilepic.jpeg"),
                flex: 6,
              ),
              Expanded(
                child: Text("Dit is de infobar"),
                flex: 4,
              )
            ],
          ),
          Row(
            children: [Text("Hier komen de posts")],
          )
        ],
      )),
    );
  }
}
