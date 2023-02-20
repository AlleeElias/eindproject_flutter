import 'package:flutter/material.dart';

import 'ColorGenerator.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gaming',
      initialRoute: '/',
      routes: {
        '/': (context) => const MyGamingPage(title: 'Welcome!'),
        '/home': (context) => const OpenScreenPage(title: 'Gaming App'),
      },
      theme: ThemeData(
        primarySwatch: generateMaterialColor(Palette.primary),
        primaryColor: Colors.black,
        scaffoldBackgroundColor: Colors.grey,
      ),
    );
  }
}

class Palette {
  static const Color primary = Colors.black;
}

class MyGamingPage extends StatefulWidget {
  const MyGamingPage({super.key, required this.title});

  final String title;

  @override
  State<MyGamingPage> createState() => _MyGamingPageState();
}

class _MyGamingPageState extends State<MyGamingPage> {
  void _enterAppButton() {
    Navigator.pop(context);
    Navigator.pushNamed(context, '/home');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
            colors: [
              Colors.red,
              Colors.grey,
            ],
          )),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Welcome to the gaming app!',
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const Text(
                'Press the button to start the app!',
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _enterAppButton,
        tooltip: 'Enter!',
        child: const Text('Enter!'),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

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
      body: const Center(
        child: Text('Dit is het nieuwe scherm'),
      ),
    );
  }
}
