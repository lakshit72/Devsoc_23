import 'package:flutter/material.dart';
import './routes/HomePage.dart';

class App extends StatelessWidget {
  App({super.key, required this.theme});
  final Map theme;
  @override
  Widget build(BuildContext context) {
    return HomePage(theme: theme);
  }
}
