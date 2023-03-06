import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class Popup3Widget extends StatelessWidget {
  const Popup3Widget({super.key});

  @override
  Widget build(BuildContext context) {
    return new AlertDialog(
      title: const Text('Account Details'),
      content: new Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text("Your channel"),
          SizedBox(
            height: 20,
          ),
          Text("Turn on Incognito"),
          SizedBox(
            height: 20,
          ),
          Text("Add Account"),
          SizedBox(
            height: 20,
          ),
          Text("Time watched"),
          SizedBox(
            height: 20,
          ),
          Text("Settings"),
        ],
      ),
      actions: <Widget>[
        new TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          //Color: Theme.of(context).primaryColor,
          child: const Text('Close'),
        ),
      ],
    );
  }
}
