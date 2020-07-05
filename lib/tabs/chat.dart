import 'package:flutter/material.dart';
import 'package:flutterapp/modal/msg_modal.dart';

class Chat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      padding: EdgeInsets.only(bottom: 30.0),
      child: new ListView.builder(
        itemCount: chatsData.length,
        itemBuilder: (context, i) => new Column(
          children: <Widget>[
            new Container(
              child: new Column(
                children: <Widget>[
                  new Divider(
                    height: 0.1,
                  ),
                  new ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.grey,
                      backgroundImage: NetworkImage(chatsData[i].pic),
                    ),
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        new Text(
                          chatsData[i].name,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14.0,
                          ),
                        ),
                        new Text(
                          chatsData[i].time,
                          style: TextStyle(fontSize: 14),
                        )
                      ],
                    ),
                    subtitle: Text(
                      chatsData[i].msg,
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
