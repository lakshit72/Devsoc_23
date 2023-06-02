import 'package:flutter/material.dart';

class TeamTile extends StatelessWidget {
  const TeamTile({super.key, required this.theme, required this.tileInfo});
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
                margin: EdgeInsets.only(left: 20, top: 20),
                child: Text(
                  tileInfo["teamName"],
                  softWrap: true,
                  maxLines: 2,
                  style: TextStyle(
                      fontFamily: theme["font"],
                      fontSize: 22,
                      color: theme["secondaryColor"]),
                ))
          ]),
          Row(children: <Widget>[
            Container(
                margin: EdgeInsets.only(left: 20, bottom: 20),
                child: Text(
                  '${tileInfo["members"].length} members',
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                      fontFamily: theme["font"],
                      fontSize: 15,
                      color: theme["subtextColor"]),
                ))
          ]),
        ])));
  }
}
