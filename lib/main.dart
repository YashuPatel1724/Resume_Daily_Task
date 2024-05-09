import 'package:flutter/material.dart';
import 'package:resume_daily_task/Drawer/drawer.dart';
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
      initialRoute: '/',
      routes: {
        '/' : (context) => BuildUpPage(),
        '/login' : (context) => LoginPage(),

      },
    );
  }
}
