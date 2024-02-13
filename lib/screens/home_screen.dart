import 'package:flutter/material.dart';
import 'package:preferences_app/shared_preferences/preferences.dart';

import '../widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  static const String routerName = 'Home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Home'),
        ),
        drawer: const SideMenu(),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Darkmode: ${Preferences.isDarkmode}'),
            const Divider(),
            Text('Genero: ${Preferences.gender}'),
            const Divider(),
            Text('Nombre de usuario: ${Preferences.name}'),
            const Divider()
          ],
        ));
  }
}
