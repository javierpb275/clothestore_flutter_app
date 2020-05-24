import 'package:clothestore_flutter_app/widgets/tabs_bar.dart';
import 'package:flutter/material.dart';

class CheckoutScreen extends StatelessWidget {
  static const ROUTE_NAME = '/checkout';


  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text('CHECK OUT'),
      ),
          body: Container(
        child: Text('This is the checkout page')
      ),
      bottomNavigationBar: TabsBar()
    );
  }
}