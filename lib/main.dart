import 'package:atvos_agricola/screens/Home/home.dart';
import 'package:atvos_agricola/screens/Login/login.dart';
import 'package:atvos_agricola/theme/custom_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarIconBrightness: Brightness.light
    
 ));
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