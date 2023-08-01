import 'package:brainwired/app_ui/app_auth/splash_screen.dart';
import 'package:brainwired/blocs/users/user_list_bloc.dart';
import 'package:brainwired/styles/app_theme.dart';
import 'package:brainwired/utils/app_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [

      BlocProvider<UserListBloc>(create: (BuildContext context)=> UserListBloc())
      ],child: MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.appThemeConfig,
      routes: Routes.a,
      initialRoute: '/',
    ));
  }
}




