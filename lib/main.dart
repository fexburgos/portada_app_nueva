import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portada_app_nueva/ui/core/navigation/app_navigator.dart';
import 'package:portada_app_nueva/ui/core/themes/theme.dart';
import 'package:portada_app_nueva/ui/login/view/login.dart';
import 'package:portada_app_nueva/ui/onboarding/view/portada.dart';
import 'package:portada_app_nueva/ui/sign_up/cubit/sig_up_cubit.dart';
import 'package:portada_app_nueva/ui/sign_up/sigin.dart';

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
        AppNavigator.signin: (_) =>
            BlocProvider(create: (context) => SigUpCubit(), child: Sigin()),
      },
      theme: AppTheme.light,
    );
  }
}
