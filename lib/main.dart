import 'package:flutter/material.dart';
import 'package:flutter_project/pages/archivepage.dart';
import 'package:flutter_project/pages/profilepage.dart';

import 'pages/homepage.dart';
import 'pages/viewpage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Polar Bears',
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
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: const Text("Polar Bears"),
          ),
          bottomNavigationBar: const TabBar(
            indicatorColor: Colors.blueAccent,
            labelColor: Colors.blueAccent,
            tabs: [
              Tab(icon: Icon(Icons.home), text: "Welcome"),
              Tab(icon: Icon(Icons.add_circle), text: "For You"),
              Tab(icon: Icon(Icons.access_time_filled), text: "Polar Wiki"),
              Tab(icon: Icon(Icons.person), text: "Profile"),
            ],
          ),
          body: TabBarView(
            children: [
              OpenScreenPage(),
              ViewPage(),
              ArchivePage(),
              ProfilePage()
            ],
          ),
        ));
  }
}
