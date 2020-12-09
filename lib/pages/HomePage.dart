import 'package:flutter/material.dart';
import 'package:flutter_localization_tst/routes/route_namee.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _key = GlobalKey<FormState>();

  void _showSuccessDialog() {
    showTimePicker(context: context, initialTime: TimeOfDay.now());
  }

  Form _mainForm(BuildContext context) {
    return Form(
      key: _key,
      child: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height / 4,
            child: Center(
              child: Text(
                "Personnel information",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          TextFormField(
            validator: (val) {
              if (val.isEmpty) {
                return "required field";
              }

              return null;
            },
            decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Name",
                hintText: "Enter Name"),
          ),
          SizedBox(
            height: 10,
          ),
          TextFormField(
            validator: (val) {
              if (val.isEmpty) {
                return "required field";
              }

              return null;
            },
            decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Email",
                hintText: "Enter Email Address"),
          ),
          SizedBox(
            height: 10,
          ),
          TextFormField(
            validator: (val) {
              if (val.isEmpty) {
                return "required field";
              }

              return null;
            },
            decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Select Data of birtk",
                hintText: "Select data of birth"),
            onTap: () async {
              FocusScope.of(context).requestFocus(FocusNode());
              await showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(DateTime.now().year),
                  lastDate: DateTime(DateTime.now().year + 20));
            },
          ),
          SizedBox(
            height: 10,
          ),
          MaterialButton(
            onPressed: () {
              if (_key.currentState.validate()) {
                _showSuccessDialog();
              }
            },
            height: 50,
            shape: StadiumBorder(),
            color: Theme.of(context).primaryColor,
            child: Center(
              child: Text(
                'Submit information',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          )
        ],
      ),
    );
  }

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
              color: Colors.white,
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
          margin: EdgeInsets.symmetric(horizontal: 20),
          child: _mainForm(context),
        ));
  }
}
