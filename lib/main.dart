import 'package:flutter/material.dart';
import 'package:resume_daily_task/Drawer/drawer.dart';
import 'package:resume_daily_task/Google%20Login%20Page/password.dart';
import 'package:resume_daily_task/Google%20Login%20Page/succes.dart';
import 'package:resume_daily_task/Google%20Login%20Page/username.dart';
import 'package:resume_daily_task/Login%20Page/build.dart';
import 'package:resume_daily_task/Login%20Page/login.dart';

void main()
{
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: DrawerApp(),
      // routes: {
      //   '/' : (context) => BuildUpPage(),
      //   '/login' : (context) => LoginPage(),
      //
      // },
      initialRoute: '/',
      routes: {
        '/':  (context) => LoginPage1(),
          '/pass' : (context) => PasswordPage(),
          '/succ' : (context) => ValidLogin(),
      },
    );
  }
}
