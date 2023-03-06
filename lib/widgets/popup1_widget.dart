import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class Popup1Widget extends StatelessWidget {
  const Popup1Widget({super.key});

  @override
  Widget build(BuildContext context) {
    return new AlertDialog(
      title: const Text('Notification'),
      content: new Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text("Your notification live here"),
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
