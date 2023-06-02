import 'package:flutter/material.dart';

class ThemeInputField extends StatelessWidget {
  ThemeInputField(
      {super.key,
      required this.width,
      required this.height,
      required this.theme,
      this.textController,
      required this.label});
  final int width;
  final int height;
  final Map theme;
  final TextEditingController? textController;
  final String label;

  @override
  Widget build(BuildContext context) {
    return TextField(
        controller: textController,
        style: TextStyle(
            fontFamily: theme["font"],
            fontSize: 20,
            color: theme["secondaryColor"]),
        decoration: InputDecoration(
            isDense: true,
            contentPadding: EdgeInsets.fromLTRB(0, 0, 0, 10),
            floatingLabelBehavior: FloatingLabelBehavior.never,
            filled: true,
            fillColor: theme["primaryColor"],
            enabledBorder: UnderlineInputBorder(
                borderSide:
                    BorderSide(width: 1.0, color: theme["accentColor"])),
            focusedBorder: UnderlineInputBorder(
                borderSide:
                    BorderSide(width: 1.0, color: theme["accentColor"])),
            label: Text(
              label,
              style: TextStyle(
                  fontFamily: "Poppins",
                  fontSize: 20,
                  color: theme["subtextColor"]),
            )));
  }
}
