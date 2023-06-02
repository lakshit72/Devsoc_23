import 'package:flutter/material.dart';
import 'package:frontend/components/ThemeFilledButton.dart';
import 'package:frontend/components/ThemeInputField.dart';
import '../components/LocationHandler.dart';

class AddEventLeaderPage extends StatefulWidget {
  AddEventLeaderPage({super.key, required this.theme});
  final Map theme;
  State<AddEventLeaderPage> createState() => _AddEventLeaderPageState();
}

class _AddEventLeaderPageState extends State<AddEventLeaderPage> {
  @override
  Widget build(BuildContext context) {
    LocationHandler locationHandler = LocationHandler(context: context);
    return Scaffold(
        appBar: AppBar(
            backgroundColor: widget.theme["primaryColor"],
            elevation: 0,
            leading: IconButton(
                onPressed: () => Navigator.of(context).pop(),
                icon: Icon(Icons.arrow_back_ios,
                    color: widget.theme["accentColor"]))),
        body: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Container(
                    margin: EdgeInsets.only(left: 40, top: 40, bottom: 40),
                    child: Text(
                      "Add Event",
                      style: TextStyle(
                          color: widget.theme["subtextColor"],
                          fontFamily: widget.theme["font"],
                          fontSize: 48),
                    ))
              ],
            ),
            SizedBox(height: 40),
            Row(
              children: <Widget>[
                Expanded(
                    child: Container(
                        margin: EdgeInsets.only(left: 20, right: 20),
                        child: ThemeInputField(
                            width: 300,
                            height: 60,
                            theme: widget.theme,
                            label: "Event Name")))
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                    child: Container(
                        margin: EdgeInsets.only(left: 20, right: 20, top: 20),
                        child: ThemeInputField(
                            width: 300,
                            height: 60,
                            theme: widget.theme,
                            label: "Max Number of members")))
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                    child: Container(
                        margin: EdgeInsets.only(
                            left: 20, right: 20, top: 20, bottom: 40),
                        child: ThemeInputField(
                            width: 300,
                            height: 60,
                            theme: widget.theme,
                            label: "Whatsapp Group Link")))
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
                        onPressed: () {
                          locationHandler.getPosition();
                        }))
              ],
            ),
            SizedBox(height: 40)
          ],
        ));
  }
}
