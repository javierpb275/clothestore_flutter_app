import 'package:flutter/material.dart';

class Product{
  final String id;
  final String section;
  final String description;
  final String imageUrl;
  final double price;

  const Product({
    @required this.id,
    @required this.section,
    @required this.description,
    @required this.imageUrl,
    @required this.price,
  });
}