import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/products.dart';

class ProductDetailScreen extends StatelessWidget {
  // final String id;
  // final String title;
  // final String imageUrl;

  // ProductDetailScreen(this.id, this.title, this.imageUrl);

  static const routeName = '/product-detail';

  @override
  Widget build(BuildContext context) {
    final productId = ModalRoute.of(context).settings.arguments as String;
    final loadedProduct = Provider.of<Products>(context).findById(productId);
    return Scaffold(
      appBar: AppBar(
        title: Text('title'),
      ),
      body: Container(
        child: Hero(child: Image.network(loadedProduct.imageUrl), tag: loadedProduct.id,),
      ),
    );
  }
}
