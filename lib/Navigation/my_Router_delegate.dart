import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_navigator_2_point_0/pages/My_Home_page.dart';
import 'package:flutter_navigator_2_point_0/pages/Page_builder.dart';

class MyRouterDelegate extends RouterDelegate<RouteSettings>
    with ChangeNotifier, PopNavigatorRouterDelegateMixin {
  static MyRouterDelegate of(BuildContext context) {
    var delegate = Router.of(context).routerDelegate;
    assert(delegate is MyRouterDelegate);
    return delegate as MyRouterDelegate;
  }

  final List<RouteSettings> _stack = <RouteSettings>[
    RouteSettings(name: MyHomePage.pageName)
  ];

  pop() {
    if (_stack.isNotEmpty) {
      _stack.remove(_stack.last);
      notifyListeners();
    }
  }

  push(RouteSettings settings) {
    _stack.add(settings);
    notifyListeners();
  }

  @override
  RouteSettings? get currentConfiguration => _stack.isNotEmpty
      ? _stack.last
      : RouteSettings(name: MyHomePage.pageName);

  @override
  Widget build(BuildContext context) {
    return Navigator(
      pages: [
        for (RouteSettings settings in _stack) PageBuilder.build(settings)
      ],
      onPopPage: onPopPage,
    );
  }

  bool onPopPage(Route<dynamic> route, result) {
    if (_stack.isNotEmpty) {
      if (_stack.last == route.settings) {
        _stack.remove(_stack.last);
        notifyListeners();
      }
    }
    return route.didPop(result);
  }

  @override
  // TODO: implement navigatorKey
  GlobalKey<NavigatorState>? get navigatorKey => GlobalKey<NavigatorState>();

  @override
  Future<void> setNewRoutePath(RouteSettings configuration) {
    _stack
      ..clear()
      ..add(configuration);
    return SynchronousFuture(null);
  }
}
