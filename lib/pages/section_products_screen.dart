import 'package:clothestore_flutter_app/models/product.dart';
import 'package:flutter/material.dart';

import 'package:clothestore_flutter_app/constants/constants.dart';

import '../widgets/product_item.dart';


class SectionProductsScreen extends StatefulWidget {
  static const ROUTE_NAME = '/section-products';

  final List<Product> availableProducts;

  SectionProductsScreen(this.availableProducts);


  @override
  _SectionProductsScreenState createState() => _SectionProductsScreenState();
}

class _SectionProductsScreenState extends State<SectionProductsScreen> {
  String sectionName;
  List<Product> displayedProducts;
  bool _loadedInitData = false;

  @override
  void initState() {
    
    super.initState();
  }

  @override 
  void didChangeDependencies() {
    if(!_loadedInitData) {
      final routeArgs =
      ModalRoute.of(context).settings.arguments as Map<String, String>;
      this.sectionName = routeArgs['name'];
      final sectionId = routeArgs['id'];
      this.displayedProducts = widget.availableProducts.where((product) {
        return product.section.contains(sectionId);
      }).toList();
      _loadedInitData = true;
    }
    super.didChangeDependencies();
    
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(sectionName),
      ),
      body: ListView.builder(itemBuilder: (ctx, index) {
        return ProductItem(
          id: displayedProducts[index].id, 
          description: displayedProducts[index].description, 
          imageUrl: displayedProducts[index].imageUrl, 
          price: displayedProducts[index].price,
        );
      }, itemCount: displayedProducts.length),
    );
  }
}
