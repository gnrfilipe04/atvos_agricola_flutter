import 'package:atvos_agricola/screens/Home/controllers/home_controller.dart';
import 'package:atvos_agricola/screens/Home/home.dart';
import 'package:atvos_agricola/screens/Home/models/filter_model.dart';
import 'package:atvos_agricola/screens/Login/login.dart';
import 'package:atvos_agricola/theme/custom_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get_it/get_it.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.light));

  GetIt getIt = GetIt.I;
  getIt.registerSingleton<FilterModel>(FilterModel());
  getIt.registerSingleton<HomeController>(HomeController());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Apontamentos Agrícola',
      theme: CustomTheme.darkTheme,
      home: const Home(),
    );
  }
}
