import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_navigator_2_point_0/pages/Page_builder.dart';
import 'package:flutter_navigator_2_point_0/pages/error_page.dart';

class MyRouteInformationParser extends RouteInformationParser<RouteSettings> {
  @override
  Future<RouteSettings> parseRouteInformation(
      RouteInformation routeInformation) {
    var settings = RouteSettings(name: routeInformation.location);
    if (PageBuilder.isValidPath(settings)) {
      return SynchronousFuture(settings);
    }
    return SynchronousFuture(const RouteSettings(name: ErrorPage.pageName));
  }

  @override
  RouteInformation? restoreRouteInformation(RouteSettings configuration) {
    if (PageBuilder.isValidPath(configuration)) {
      return RouteInformation(location: configuration.name);
    }
    return const RouteInformation(location: ErrorPage.pageName);
  }
}
