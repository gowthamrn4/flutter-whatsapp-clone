import 'package:flutter/material.dart';
import 'package:flutterapp/modal/call_data.dart';

class Calls extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
      itemCount: callsData.length,
      itemBuilder: (context, i) => new Column(
        children: <Widget>[
          new Divider(
            height: 0.1,
          ),
          new ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.grey,
              backgroundImage: NetworkImage(callsData[i].pic),
            ),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                new Text(
                  callsData[i].name,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Icon(
                  i % 2 == 0 ? Icons.videocam : Icons.call,
                  color: Theme.of(context).primaryColor,
                )
              ],
            ),
            subtitle: Text(callsData[i].time),
          )
        ],
      ),
    );
  }
}
