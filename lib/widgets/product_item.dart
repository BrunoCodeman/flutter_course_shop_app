import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/screens/product_detail_screen.dart';

class ProductItem extends StatelessWidget {
  final String id;
  final String title;
  final String imageUrl;
  const ProductItem(this.id, this.title, this.imageUrl);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: GridTile(
        child: GestureDetector(
          onTap: () => Navigator.of(context)
              .pushNamed(ProductDetailScreen.routeName, arguments: id),
          child: Image.network(
            imageUrl,
            fit: BoxFit.cover,
          ),
        ),
        footer: GridTileBar(
            leading: IconButton(
              color: Theme.of(context).colorScheme.secondary,
              icon: Icon(Icons.favorite),
              onPressed: () {},
            ),
            trailing: IconButton(
              color: Theme.of(context).colorScheme.secondary,
              icon: Icon(Icons.shopping_cart),
              onPressed: () {},
            ),
            backgroundColor: Colors.black87,
            title: Text(
              title,
              textAlign: TextAlign.center,
            )),
      ),
    );
  }
}
