import 'package:flutter/material.dart';
import 'package:getx/model/model.dart';

class ItemDetails extends StatelessWidget {
  const ItemDetails({super.key, required this.product});
  final Product product;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Placeholder(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(product.subTitle!),
                Text(
                  product.title!,
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 140,
                  decoration: BoxDecoration(
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(20)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.remove),
                      ),
                      Text(product.quantity.toString()),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.add),
                      )
                    ],
                  ),
                ),
                Text("${product.price} \$")
              ],
            ),
            Text(product.description!),
            Center(
                child: ElevatedButton(
              onPressed: () {},
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "Add To Cart",
                    style: TextStyle(fontSize: 19),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Icon(Icons.favorite)
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}
