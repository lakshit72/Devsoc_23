import 'package:flutter/material.dart';

class ThemeOutlinedButton extends StatelessWidget {
  const ThemeOutlinedButton({
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
                  side: BorderSide(color: theme["accentColor"], width: 2),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(borderRadius),
                  )),
          child: Text(
            text,
            style: TextStyle(
                fontFamily: theme["font"],
                fontSize: 28,
                color: theme["accentColor"],
                fontWeight: FontWeight.w800),
          ),
        ));
  }
}
