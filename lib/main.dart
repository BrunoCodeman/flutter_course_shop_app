import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/screens/products_overview_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final themeData = ThemeData(primarySwatch: Colors.purple, fontFamily: 'Lato');
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MyShop',
      theme: themeData.copyWith(
        colorScheme:
            themeData.colorScheme.copyWith(secondary: Colors.deepOrange),
      ),
      home: ProductsOverviewScreen(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MyShop'),
      ),
      body: Center(
        child: Text('Let\'s build a shop!'),
      ),
    );
  }
}
