import 'package:flutter/material.dart';
import '../components/ThemeOutlinedButton.dart';
import './TeamsLeaderPage.dart';
import './TeamsMemberPage.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.theme});
  final Map theme;
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            margin: EdgeInsets.only(top: 120, left: 40),
            child: Column(children: <Widget>[
              Row(children: <Widget>[
                Text("HuddleUp",
                    style: TextStyle(
                        color: widget.theme["subtextColor"],
                        fontFamily: widget.theme["titleFont"],
                        fontSize: 64)),
              ]),
              Row(
                children: <Widget>[
                  Container(
                      margin: EdgeInsets.only(top: 120, left: 20),
                      child: ThemeOutlinedButton(
                        width: 300,
                        height: 60,
                        theme: widget.theme,
                        text: "Team Leader",
                        borderRadius: 10,
                        onPressed: () => Navigator.of(context).push(
                            MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    TeamsLeaderPage(theme: widget.theme))),
                      ))
                ],
              ),
              Row(
                children: <Widget>[
                  Container(
                      margin: EdgeInsets.only(top: 20, left: 20),
                      child: ThemeOutlinedButton(
                        width: 300,
                        height: 60,
                        theme: widget.theme,
                        text: "Team Member",
                        borderRadius: 10,
                        onPressed: () => Navigator.of(context).push(
                            MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    TeamsMemberPage(theme: widget.theme))),
                      ))
                ],
              ),
              Row(
                children: <Widget>[
                  Container(
                      margin: EdgeInsets.only(left: 30, top: 160),
                      child: Text("Made for DevSoc 2023",
                          style: TextStyle(
                              fontFamily: widget.theme["font"], fontSize: 24)))
                ],
              )
            ])));
  }
}
