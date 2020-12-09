import 'package:flutter/material.dart';
import 'package:flutter_localization_tst/routes/route_namee.dart';

class AboutPage extends StatefulWidget {
  @override
  _AboutPageState createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
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
          ))
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: _drawerList(),
      appBar: AppBar(
        title: Text("About Page"),
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
