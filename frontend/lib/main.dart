import 'package:flutter/material.dart';
import 'App.dart';

Map _lightTheme = {
  "primaryColor": Color.fromARGB(255, 255, 255, 255),
  "secondaryColor": Color.fromARGB(255, 20, 20, 20),
  "accentColor": Color.fromARGB(255, 235, 0, 255),
  "subtextColor": Color.fromARGB(255, 76, 76, 76),
  "errorColor": Color.fromARGB(255, 255, 0, 92),
  "font": "K2D",
  "titleFont": "JacquesFrancoisShadow"
};

Map currentTheme = _lightTheme;
void main() {
  runApp(HuddleUp());
}

class HuddleUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: App(theme: currentTheme),
    );
  }
}
