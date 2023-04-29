import 'package:flutter/material.dart';
import 'package:flutter_navigator_2_point_0/Navigation/my_Router_delegate.dart';
import 'package:flutter_navigator_2_point_0/Navigation/my_route_information_parser.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routerDelegate: MyRouterDelegate(),
      routeInformationParser: MyRouteInformationParser(),
    );
  }
}
