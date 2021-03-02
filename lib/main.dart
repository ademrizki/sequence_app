import 'package:flutter/material.dart';
import 'package:flutter_app_form/home_screen.dart';
import 'package:flutter_app_form/manager/home_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: ChangeNotifierProvider<HomeProvider>(
        create: (context) => HomeProvider(),
        child: MyHomePage(),
      ),
    );
  }
}
