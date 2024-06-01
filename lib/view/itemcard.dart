import 'package:flutter/material.dart';
import 'package:getx/model/model.dart';
import 'package:getx/view/item_details.dart';

class ItemCard extends StatelessWidget {
  final Product product;
  ItemCard({required this.product, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => ItemDetails(product: product)));
        },
        child: Container(
          height: 300,
          width: 150,
          decoration: BoxDecoration(
              border: Border.all(), borderRadius: BorderRadius.circular(20)),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(product.title!),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("${product.price} \$"),
                    Icon(
                      product.isFav!
                          ? Icons.favorite
                          : Icons.favorite_outline_outlined,
                      color: product.isFav! ? Colors.red : Colors.grey,
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
