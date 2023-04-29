import 'package:flutter/material.dart';
import 'package:flutter_navigator_2_point_0/pages/My_Home_page.dart';
import 'package:flutter_navigator_2_point_0/pages/My_page.dart';
import 'package:flutter_navigator_2_point_0/pages/error_page.dart';
import 'package:flutter_navigator_2_point_0/pages/second_page.dart';

class PageBuilder {
  static Page build(RouteSettings settings) {
    if (settings.name == MyHomePage.pageName) {
      return MyPage(
          page: MyHomePage(title: 'Home Page'),
          name: settings.name!,
          arguments: settings.arguments);
    } else if (settings.name == SecondPage.pageName) {
      return MyPage(
          page: SecondPage(),
          name: settings.name!,
          arguments: settings.arguments);
    } else {
      return MyPage(
          page: ErrorPage(),
          name: settings.name!,
          arguments: settings.arguments);
    }
  }

  static bool isValidPath(RouteSettings settings) {
    return settings.name == MyHomePage.pageName ||
        settings.name == SecondPage.pageName;
  }
}
