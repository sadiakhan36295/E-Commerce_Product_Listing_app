import 'package:flutter/material.dart';
import 'package:productlisting_app/models/ProductModel.dart';


class ProductTile extends StatelessWidget {
  final ProductModel product;

  const ProductTile({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            border: Border.all(color: Colors.grey.shade300),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: ClipRRect(
                  borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
                  child: Image.network(
                    product.imageUrl,
                    fit: BoxFit.cover,
                    width: double.infinity,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Text(
                  product.name,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Row(
                  children: [
                    Text("\$${product.price}", style: TextStyle(fontWeight: FontWeight.bold)),
                    const SizedBox(width: 5),
                    Text(
                      "\$${product.oldPrice}",
                      style: TextStyle(decoration: TextDecoration.lineThrough, color: Colors.grey),
                    ),
                    const SizedBox(width: 5),
                    if (product.discount > 0)
                      Text(
                        "${product.discount}% OFF",
                        style: TextStyle(color: Colors.red, fontSize: 8),
                      ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4),
                child: Row(
                  children: [
                    Icon(Icons.star, size: 16, color: Colors.amber),
                    const SizedBox(width: 4),
                    Text("${product.rating} (${product.reviews})", style: TextStyle(fontSize: 12)),
                  ],
                ),
              ),
            ],
          ),
        ),
        if (product.isOutOfStock)
          Positioned(
            top: 8,
            left: 8,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Text("Out Of Stock", style: TextStyle(color: Colors.white, fontSize: 10)),
            ),
          ),
        Positioned(
          top: 8,
          right: 8,
          child: Icon(
            product.isFavorite ? Icons.favorite : Icons.favorite_border,
            color: product.isFavorite ? Colors.red : Colors.grey,
          ),
        ),
      ],
    );
  }
}
