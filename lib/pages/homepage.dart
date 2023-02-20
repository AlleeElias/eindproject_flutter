import 'package:flutter/material.dart';
import 'package:flutter_project/components/navigationbar.dart';

class OpenScreenPage extends StatefulWidget {
  const OpenScreenPage({super.key, required this.title});

  final String title;

  @override
  State<OpenScreenPage> createState() => _OpenScreenState();
}

class _OpenScreenState extends State<OpenScreenPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      bottomNavigationBar: const BottomAppBar(
        color: Colors.red,
        elevation: 0,
        child: NavigationWidget(),
      ),
      body: Center(
          child: Column(
        children: const <Widget>[
          Text('Dit is het nieuwe scherm'),
        ],
      )),
    );
  }
}
