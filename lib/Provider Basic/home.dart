import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_app/Provider%20Basic/controller/homeController.dart';

class Home extends StatelessWidget {
int _countervaule=0;
 _incrementCounter(BuildContext context) {
  Provider.of<HomeController>(context, listen: false).increment();
}
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: Text("Provier Counter"),),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
   Text("$_countervaule",
   style: Theme.of(context).textTheme.headline4),
        ],
      ),

      floatingActionButton: FloatingActionButton(
        onPressed:()=> _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
