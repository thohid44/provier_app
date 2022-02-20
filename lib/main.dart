import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_app/Provider%20Basic/controller/homeController.dart';

import 'Provider Basic/home.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider<HomeController>(
        create: (context) => HomeController()),
  ]));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Home(),
    );
  }
}
