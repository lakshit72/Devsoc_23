import 'package:flutter/material.dart';

class ThemeFilledButton extends StatelessWidget {
  const ThemeFilledButton({
    super.key,
    required this.width,
    required this.height,
    this.borderRadius = 0,
    required this.theme,
    required this.text,
    this.onPressed,
    this.style,
  });
  final double width;
  final String text;
  final double height;
  final double borderRadius;
  final Map theme;
  final Function()? onPressed;
  final ButtonStyle? style;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: width,
        height: height,
        child: OutlinedButton(
          onPressed: (onPressed != null) ? onPressed : null,
          style: style ??
              OutlinedButton.styleFrom(
                  backgroundColor: theme["accentColor"],
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(borderRadius))),
          child: Text(
            text,
            style: TextStyle(
                fontFamily: theme["font"],
                fontSize: 28,
                color: Color.fromARGB(255, 244, 244, 244),
                fontWeight: FontWeight.w800),
          ),
        ));
  }
}
