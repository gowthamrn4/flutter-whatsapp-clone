import 'package:flutter/material.dart';
import 'package:flutterapp/tabs/chat.dart';
import 'package:flutterapp/tabs/status.dart';
import 'package:flutterapp/tabs/calls.dart';
import 'package:flutterapp/tabs/camera.dart';

void main() {
  runApp(MaterialApp(
    theme: new ThemeData(
        primaryColor: const Color(0xff075e54),
        accentColor: const Color(0xffD44638)),
    home: MyApp(),
    debugShowCheckedModeBanner: false,
  ));
}

class MyApp extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<MyApp> with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = new TabController(length: 4, vsync: this, initialIndex: 1)
      ..addListener(() {
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff075e54),
        title: Text('WhatsApp'),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(
              Icons.more_vert,
              color: Colors.white,
            ),
            onPressed: () {},
          )
        ],
        bottom: TabBar(
          indicatorColor: Colors.white,
          controller: _tabController,
          tabs: <Widget>[
            Tab(
              icon: Icon(Icons.camera_alt),
            ),
            Tab(
              text: 'CHAT',
            ),
            Tab(
              text: 'STATUS',
            ),
            Tab(
              text: 'CALL',
            ),
          ],
        ),
      ),
      body: new TabBarView(
        controller: _tabController,
        children: <Widget>[
          new Camera(),
          new Chat(),
          new Status(),
          new Calls(),
        ],
      ),
      floatingActionButton: _tabController.index == 0
          ? floatactionbutton('0')
          : _tabController.index == 1
              ? floatactionbutton('1')
              : _tabController.index == 2
                  ? floatactionbutton_01('2')
                  : floatactionbutton('3'),
    );
  }
}

FloatingActionButton floatactionbutton(String index) {
  return (FloatingActionButton(
    backgroundColor: Colors.green,
    child: index == '0'
        ? Icon(Icons.camera_alt)
        : index == '1'
            ? Icon(Icons.chat)
            : index == '2' ? Icon(Icons.call) : Icon(Icons.call_missed),
    onPressed: () {},
  ));
}

Column floatactionbutton_01(String index) {
  return (Column(
    mainAxisAlignment: MainAxisAlignment.end,
    children: <Widget>[
      SizedBox(
        height: 45.0,
        width: 45.0,
        child: FloatingActionButton(
          backgroundColor: Colors.white,
          child: Icon(
            Icons.edit,
            color: Colors.black,
          ),
          onPressed: () {},
        ),
      ),
      SizedBox(
        height: 10.0,
      ),
      FloatingActionButton(
        backgroundColor: Colors.green,
        child: Icon(Icons.camera_alt),
        onPressed: () {},
      )
    ],
  ));
}
