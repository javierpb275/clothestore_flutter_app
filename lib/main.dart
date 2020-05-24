import 'package:clothestore_flutter_app/constants/constants.dart';

import './pages/homepage_screen.dart';
import 'package:flutter/material.dart';

import 'models/product.dart';
import 'pages/checkout_screen.dart';
import 'pages/product_detail_screen.dart';
import 'pages/section_products_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  List<Product> _availableProducts = PRODUCTS;


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CLOTHESTORE',
      theme: ThemeData(
        primarySwatch: Colors.purple,
        accentColor: Colors.white,
        canvasColor: Colors.pink[100],
        textTheme: ThemeData.light().textTheme.copyWith(
          title: TextStyle(fontSize: 24), 
        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (ctx) => HomePageScreen(),
        SectionProductsScreen.ROUTE_NAME: (ctx) => SectionProductsScreen(_availableProducts),
        ProductDetailScreen.ROUTE_NAME: (ctx) => ProductDetailScreen(),
        CheckoutScreen.ROUTE_NAME: (ctx) => CheckoutScreen(),
      },
      
    );
  }
}

