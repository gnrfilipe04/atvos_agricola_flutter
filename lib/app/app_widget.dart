import 'package:atvos_agricola/app/app_controller.dart';
import 'package:atvos_agricola/app/screens/Home/home.dart';
import 'package:atvos_agricola/app/screens/Notation/notation.dart';
import 'package:atvos_agricola/app/screens/TypeNote/type_note.dart';
import 'package:atvos_agricola/app/theme/custom_theme.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  final AppController appController = AppController();

  @override
  void initState() {
    super.initState();

    GetIt.I.registerSingleton<AppController>(appController);

    appController.init();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Apontamentos Agrícola',
      theme: CustomTheme.darkTheme,
      routes: {
        '/': (context) => const TypeNote(),
        '/type_note': (context) => const TypeNote()
      },
    );
  }
}
