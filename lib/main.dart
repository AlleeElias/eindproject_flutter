import 'package:flutter/material.dart';
import 'package:flutter_project/pages/profilepage.dart';

import 'colorgenerator.dart';
import 'pages/homepage.dart';
import 'pages/viewpage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gaming',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: GamingApp(),
    );
  }
}

class GamingApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: const Text("Gaming App"),
          ),
          bottomNavigationBar: const TabBar(
            indicatorColor: Colors.blueAccent,
            labelColor: Colors.blueAccent,
            tabs: [
              Tab(icon: Icon(Icons.home), text: "Welcome"),
              Tab(icon: Icon(Icons.add_circle), text: "For You"),
              Tab(icon: Icon(Icons.person), text: "Profile"),
            ],
          ),
          body: const TabBarView(
            children: [OpenScreenPage(), ViewPage(), ProfilePage()],
          ),
        ));
  }
}
