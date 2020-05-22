import 'package:clothestore_flutter_app/constants/constants.dart';
import 'package:flutter/material.dart';

class ProductDetailScreen extends StatelessWidget {
  static const ROUTE_NAME = '/product-detail';

  @override
  Widget build(BuildContext context) {
    final productId = ModalRoute.of(context).settings.arguments as String;
    final selectedProduct = PRODUCTS.firstWhere((product) => product.id == productId);
    return Scaffold(
      appBar: AppBar(
        title: Text('${selectedProduct.description}'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              height: 300,
              width: double.infinity,
              child: Image.network(
                selectedProduct.imageUrl,
                fit: BoxFit.cover,
              ),
            ),
            Container(child: Text('Price: \$${selectedProduct.price}',
            style: TextStyle(fontSize: 50)),
            ),
            FlatButton(
              color: Colors.purple,
              textColor: Colors.white,
              padding: EdgeInsets.all(8.0),
              splashColor: Colors.purple,
              onPressed: () {},
              child: Text('Add to Cart', style: TextStyle(fontSize: 20),),
            
            )
          ],
        ),
      )
    );
  }
}