import 'package:flutter/material.dart';

class NavigationWidget extends StatefulWidget {
  const NavigationWidget({super.key});

  @override
  State<NavigationWidget> createState() => _NavBarState();
}

class _NavBarState extends State<NavigationWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(color: Colors.white),
        child: const Text('Dit is de navigatiebar?'));
  }
}
