import 'package:componentes/models/models.dart';
import 'package:flutter/material.dart';

import '../screens/screens.dart';

class AppRoutes {
  static const initialRoute = 'home';

  static final menuOptions = <MenuOptions>[
    //TODO: Borrar home
    MenuOptions(
        route: 'home',
        name: 'Home Screen',
        screen: const HomeScreen(),
        icon: Icons.home_max_sharp),
    MenuOptions(
        route: 'listview1',
        name: 'Listview Tipo 1',
        screen: const ListView1Screen(),
        icon: Icons.list_alt),
    MenuOptions(
        route: 'listview2',
        name: 'Listview Tipo 2',
        screen: const ListView1Screen(),
        icon: Icons.list),
    MenuOptions(
        route: 'listview2',
        name: 'Listview Tipo 2',
        screen: const ListView1Screen(),
        icon: Icons.list),
    MenuOptions(
        route: 'alert',
        name: 'Alertas',
        screen: const AlertScreen(),
        icon: Icons.add_alert_outlined),
    MenuOptions(
        route: 'card',
        name: 'Tarjetas - Cards',
        screen: const CardScreen(),
        icon: Icons.credit_card)
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};

    for (final options in menuOptions) {
      appRoutes.addAll({
        options.route: (BuildContext context) => options.screen,
      });
    }

    return appRoutes;
  }

  /*  static Map<String, Widget Function(BuildContext)> routes = {
    'home': (BuildContext context) => const HomeScreen(),
    'listview1': (BuildContext context) => const ListView1Screen(),
    'listview2': (BuildContext context) => const ListView2Screen(),
    'alert': (BuildContext context) => const AlertScreen(),
    'card': (BuildContext context) => const CardScreen(),
  }; */

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    //print(settings);

    return MaterialPageRoute(
      builder: (context) => const AlertScreen(),
    );
  }
}
