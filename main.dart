import 'package:flutter/material.dart';
import 'package:flutter4/index_screen.dart';
import 'package:flutter4/detail_Screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

    Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      darkTheme: ThemeData(primarySwatch: Colors.grey),
      color: Colors.amberAccent, 
      supportedLocales: {const Locale('en', ' ')}, 
      debugShowCheckedModeBanner: false, 
      initialRoute: '/',
      routes: {
        '/': (context) => const IndexScreen(), 
        '/detail': (context) => const DetailScreen(), 
      },
    );
  }
}







