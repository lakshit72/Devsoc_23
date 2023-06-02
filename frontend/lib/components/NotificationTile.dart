import 'package:flutter/material.dart';
import 'package:frontend/components/ThemeOutlinedButton.dart';

class NotificationTile extends StatelessWidget {
  const NotificationTile(
      {super.key, required this.theme, required this.tileInfo});
  final Map theme;
  final Map tileInfo;
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            border: Border(
                bottom: BorderSide(color: theme["accentColor"], width: 2))),
        child: ListTile(
          title: Column(children: <Widget>[
            Row(children: <Widget>[
              Container(
                  width: 132,
                  margin: EdgeInsets.only(left: 20, top: 20, bottom: 20),
                  child: Text(
                    (tileInfo["type"] == "Invite")
                        ? "${tileInfo['sender']} invited you to join ${tileInfo['team']}"
                        : "${tileInfo['sender']} wants to join ${'team'}",
                    softWrap: true,
                    maxLines: 4,
                    style: TextStyle(
                        fontFamily: theme["font"],
                        fontSize: 16,
                        color: theme["secondaryColor"]),
                  )),
              Container(
                  margin: EdgeInsets.only(left: 20),
                  child: Row(
                    children: [
                      IconButton(
                          onPressed: null,
                          icon: Icon(Icons.check,
                              color: theme["subtextColor"], size: 24)),
                      IconButton(
                          onPressed: null,
                          icon: Icon(Icons.close,
                              color: theme["subtextColor"], size: 24))
                    ],
                  ))
            ]),
          ]),
        ));
  }
}
