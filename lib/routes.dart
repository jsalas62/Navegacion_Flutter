import 'package:flutter/material.dart';
import 'main.dart';
import 'segunda_pantalla.dart';
import 'tercera_pantalla.dart';

class AppRoutes {
  static const String home = '/';
  static const String secondScreen = '/second';
  static const String thirdScreen = '/third';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case home:
        return MaterialPageRoute(builder: (_) => FirstScreen());
      case secondScreen:
        final args = settings.arguments as String;
        return MaterialPageRoute(
          builder: (_) => SecondScreen(),
          settings: RouteSettings(arguments: args),
        );
      case thirdScreen:
        final args = settings.arguments as String;
        return MaterialPageRoute(
          builder: (_) => ThirdScreen(),
          settings: RouteSettings(arguments: args),
        );
      default:
        return MaterialPageRoute(builder: (_) => FirstScreen());
    }
  }
}
