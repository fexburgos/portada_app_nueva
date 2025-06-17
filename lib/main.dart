import 'package:flutter/material.dart';
import 'package:portada_app_nueva/app_navigator.dart';
import 'package:portada_app_nueva/login.dart';
import 'package:portada_app_nueva/portada.dart';
import 'package:portada_app_nueva/sigin.dart';
import 'package:portada_app_nueva/theme.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      //home: LogIn(),
      routes: {
        AppNavigator.main: (_) => Home(),
        AppNavigator.login: (_) => LogIn(),
        AppNavigator.signin: (_) => Sigin(),
      },
      theme: AppTheme.light,
    );
  }
}
