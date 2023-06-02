import 'package:flutter/material.dart';
import 'package:frontend/components/ThemeFilledButton.dart';
import 'package:frontend/routes/AddEventMemberPage.dart';
import '../components/TeamTile.dart';
import '../components/NotificationTile.dart';

class TeamsMemberPage extends StatefulWidget {
  TeamsMemberPage({super.key, required this.theme});
  final Map theme;
  State<TeamsMemberPage> createState() => _TeamsMemberPageState();
}

class _TeamsMemberPageState extends State<TeamsMemberPage> {
  List<Map> notifications = [
    {
      "type": "Invite",
      "sender": "senderID",
      "receiver": "receiverID",
      "team": "TEAM ID"
    },
    {
      "type": "Request",
      "sender": "senderID",
      "receiver": "receiverID",
      "team": "TEAM ID"
    },
    {
      "type": "Invite",
      "sender": "senderID",
      "receiver": "receiverID",
      "team": "TEAM ID"
    },
    {
      "type": "Request",
      "sender": "senderID",
      "receiver": "receiverID",
      "team": "TEAM ID"
    },
    {
      "type": "Invite",
      "sender": "senderID",
      "receiver": "receiverID",
      "team": "TEAM ID"
    },
    {
      "type": "Request",
      "sender": "senderID",
      "receiver": "receiverID",
      "team": "TEAM ID"
    },
    {
      "type": "Invite",
      "sender": "senderID",
      "receiver": "receiverID",
      "team": "TEAM ID"
    },
    {
      "type": "Request",
      "sender": "senderID",
      "receiver": "receiverID",
      "team": "TEAM ID"
    }
  ];
  List<Map> teams = [
    {
      "id": "TEAM ID",
      "teamName": "DevSoc 2023",
      "event": "EVENT NAME",
      "leader": "LEADER ID",
      "members": [],
      "maxMembers": "2",
      "active": true
    },
    {
      "id": "TEAM ID",
      "teamName": "TEAM NAME",
      "event": "EVENT NAME",
      "leader": "LEADER ID",
      "members": [],
      "maxMembers": "2",
      "active": true
    },
    {
      "id": "TEAM ID",
      "teamName": "TEAM NAME",
      "event": "EVENT NAME",
      "leader": "LEADER ID",
      "members": [],
      "maxMembers": "2",
      "active": true
    },
    {
      "id": "TEAM ID",
      "teamName": "TEAM NAME",
      "event": "EVENT NAME",
      "leader": "LEADER ID",
      "members": [],
      "maxMembers": "2",
      "active": true
    },
    {
      "id": "TEAM ID",
      "teamName": "TEAM NAME",
      "event": "EVENT NAME",
      "leader": "LEADER ID",
      "members": [],
      "maxMembers": "2",
      "active": true
    },
    {
      "id": "TEAM ID",
      "teamName": "TEAM NAME",
      "event": "EVENT NAME",
      "leader": "LEADER ID",
      "members": [],
      "maxMembers": "2",
      "active": true
    },
    {
      "id": "TEAM ID",
      "teamName": "TEAM NAME",
      "event": "EVENT NAME",
      "leader": "LEADER ID",
      "members": [],
      "maxMembers": "2",
      "active": true
    },
    {
      "id": "TEAM ID",
      "teamName": "TEAM NAME",
      "event": "EVENT NAME",
      "leader": "LEADER ID",
      "members": [],
      "maxMembers": "2",
      "active": true
    },
    {
      "id": "TEAM ID",
      "teamName": "TEAM NAME",
      "event": "EVENT NAME",
      "leader": "LEADER ID",
      "members": [],
      "maxMembers": "2",
      "active": true
    },
    {
      "id": "TEAM ID",
      "teamName": "TEAM NAME",
      "event": "EVENT NAME",
      "leader": "LEADER ID",
      "members": [],
      "maxMembers": "2",
      "active": true
    },
    {
      "id": "TEAM ID",
      "teamName": "TEAM NAME",
      "event": "EVENT NAME",
      "leader": "LEADER ID",
      "members": [],
      "maxMembers": "2",
      "active": true
    },
    {
      "id": "TEAM ID",
      "teamName": "TEAM NAME",
      "event": "EVENT NAME",
      "leader": "LEADER ID",
      "members": [],
      "maxMembers": "2",
      "active": true
    },
    {
      "id": "TEAM ID",
      "teamName": "TEAM NAME",
      "event": "EVENT NAME",
      "leader": "LEADER ID",
      "members": [],
      "maxMembers": "2",
      "active": true
    },
    {
      "id": "LeetCode",
      "teamName": "TEAM NAME",
      "event": "EVENT NAME",
      "leader": "LEADER ID",
      "members": [],
      "maxMembers": "2",
      "active": true
    }
  ];
  Widget _listBuilder(List<Map> teamsList) {
    return ListView.builder(
      itemCount: teamsList.length,
      itemBuilder: (context, iterator) {
        return TeamTile(theme: widget.theme, tileInfo: teamsList[iterator]);
      },
    );
  }

  Widget _notificationsListBuilder(List<Map> notificationsList) {
    return ListView.builder(
      itemCount: notificationsList.length,
      itemBuilder: (context, iterator) {
        return NotificationTile(
            theme: widget.theme, tileInfo: notificationsList[iterator]);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: widget.theme["primaryColor"],
          elevation: 0,
          leading: IconButton(
              onPressed: () => Navigator.of(context).pop(),
              icon: Icon(Icons.arrow_back_ios,
                  color: widget.theme["accentColor"])),
          actions: [
            Builder(
                builder: (BuildContext context) => IconButton(
                      icon: Icon(Icons.notifications,
                          color: widget.theme["subtextColor"], size: 32),
                      onPressed: () {
                        Scaffold.of(context).openEndDrawer();
                      },
                    ))
          ],
        ),
        endDrawer: Drawer(
            child: Column(children: <Widget>[
          Row(
            children: <Widget>[
              Container(
                  margin: EdgeInsets.only(left: 20, top: 68, bottom: 20),
                  child: Text("Notifications",
                      style: TextStyle(
                          color: widget.theme["subtextColor"],
                          fontFamily: widget.theme["font"],
                          fontSize: 42)))
            ],
          ),
          Expanded(
              child: (notifications.length == 0)
                  ? Container(
                      margin: EdgeInsets.only(top: 200),
                      child: Text("No new notifications",
                          style: TextStyle(
                              color: widget.theme["subtextColor"],
                              fontSize: 18,
                              fontFamily: widget.theme["font"])))
                  : _notificationsListBuilder(notifications
                      .where(
                          (notification) => notification["type"] == "Request")
                      .toList()))
        ])),
        body: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Container(
                    margin: EdgeInsets.only(left: 40, top: 40, bottom: 40),
                    child: Text(
                      "Looking....",
                      style: TextStyle(
                          color: widget.theme["subtextColor"],
                          fontFamily: widget.theme["font"],
                          fontSize: 48),
                    ))
              ],
            ),
            Expanded(child: _listBuilder(teams)),
            SizedBox(height: 40),
            Row(
              children: <Widget>[
                Container(
                    margin: EdgeInsets.only(left: 70, top: 20),
                    child: ThemeFilledButton(
                      width: 250,
                      height: 60,
                      theme: widget.theme,
                      text: "Recruit Members",
                      borderRadius: 10,
                    ))
              ],
            ),
            Row(
              children: <Widget>[
                Container(
                    margin: EdgeInsets.only(left: 70, top: 20),
                    child: ThemeFilledButton(
                      width: 250,
                      height: 60,
                      theme: widget.theme,
                      text: "Add Event",
                      borderRadius: 10,
                      onPressed: () => Navigator.of(context).push(
                          MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  AddEventMemberPage(theme: widget.theme))),
                    ))
              ],
            ),
            SizedBox(height: 40)
          ],
        ));
  }
}
