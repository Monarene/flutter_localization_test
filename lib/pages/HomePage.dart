import 'package:flutter/material.dart';
import 'package:flutter_localization_tst/routes/route_namee.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Container _drawerList() {
    TextStyle _textStyle = TextStyle(color: Colors.white);

    return Container(
      width: MediaQuery.of(context).size.width / 1.5,
      color: Theme.of(context).primaryColor,
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
              child: Container(
            height: 100,
            child: CircleAvatar(),
          )),
          ListTile(
            leading: Icon(
              Icons.info,
              color: Colors.white,
              size: 30,
            ),
            title: Text(
              "About us",
              style: _textStyle,
            ),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, aboutRoute);
            },
          ),
          ListTile(
            leading: Icon(
              Icons.settings,
              color: Colors.blue,
              size: 30,
            ),
            title: Text(
              "Settings",
              style: _textStyle,
            ),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, settingsRoute);
            },
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: _drawerList(),
      appBar: AppBar(
        title: Text("Home Page"),
      ),
      body: Container(
        child: MaterialButton(
          color: Colors.blue,
          child: Text("Navigate to about page"),
          onPressed: () {
            Navigator.pushNamed(context, aboutRoute);
          },
        ),
      ),
    );
  }
}
