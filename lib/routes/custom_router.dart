import 'package:flutter/material.dart';
import 'package:flutter_localization_tst/pages/AboutPage.dart';
import 'package:flutter_localization_tst/pages/SettingsPage.dart';
import 'route_namee.dart';
import 'package:flutter_localization_tst/pages/HomePage.dart';
import 'package:flutter_localization_tst/pages/NotFoundPage.dart';

class CustomRouter {
  static Route<dynamic> allRoutes(RouteSettings settings) {
    switch (settings.name) {
      case homeRoute:
        return MaterialPageRoute(builder: (_) => HomePage());
      case aboutRoute:
        return MaterialPageRoute(builder: (_) => AboutPage());
      case settingsRoute:
        return MaterialPageRoute(builder: (_) => SettingsPage());
    }
    return MaterialPageRoute(builder: (_) => NotFoundPage());
  }
}
