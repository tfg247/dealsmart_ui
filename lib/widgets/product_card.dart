import 'package:dealsmart/models/product_model.dart';
import 'package:flutter/material.dart';

// class ProductCard extends StatelessWidget {
//   final Product product;

//   const ProductCard({Key? key, required this.product}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       elevation: 4,
//       margin: EdgeInsets.all(10),
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.circular(10),
//       ),
//       child: Padding(
//         padding: const EdgeInsets.all(10.0),
//         child: Row(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             // Product Image
//             ClipRRect(
//               borderRadius: BorderRadius.circular(8),
//               child: Image.network(
//                 product.imageUrl,
//                 height: 100,
//                 width: 100,
//                 fit: BoxFit.cover,
//               ),
//             ),
//             SizedBox(width: 10),
//             // Product Details
//             Expanded(
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     product.name,
//                     style: TextStyle(
//                       fontSize: 16,
//                       fontWeight: FontWeight.bold,
//                     ),
//                     maxLines: 1,
//                     overflow: TextOverflow.ellipsis,
//                   ),
//                   SizedBox(height: 5),
//                   Text(
//                     product.description,
//                     style: TextStyle(
//                       fontSize: 14,
//                       color: Colors.grey,
//                     ),
//                     maxLines: 2,
//                     overflow: TextOverflow.ellipsis,
//                   ),
//                   SizedBox(height: 10),
//                   Text(
//                     "\$${product.price.toStringAsFixed(2)}",
//                     style: TextStyle(
//                       fontSize: 16,
//                       fontWeight: FontWeight.bold,
//                       color: Colors.green,
//                     ),
//                   ),
//                   SizedBox(height: 5),
//                   Row(
//                     children: [
//                       Icon(Icons.star, color: Colors.yellow, size: 16),
//                       SizedBox(width: 5),
//                       Text(
//                         product.rating.toString(),
//                         style: TextStyle(fontSize: 14),
//                       ),
//                       Spacer(),
//                       Text(
//                         product.stock > 0 ? "In Stock" : "Out of Stock",
//                         style: TextStyle(
//                           fontSize: 14,
//                           color: product.stock > 0 ? Colors.green : Colors.red,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }


class HorizontalProductList extends StatelessWidget {
  final List<Product> products;

  const HorizontalProductList({Key? key, required this.products}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 140, // Set a fixed height to constrain the list
      child: ListView.builder(
        scrollDirection: Axis.horizontal, // Enable horizontal scrolling
        itemCount: products.length,
        itemBuilder: (context, index) {
          return SizedBox(
            width: 300, // Set a fixed width for the ProductCard
            child: ProductCard(product: products[index]),
          );
        },
      ),
    );
  }
}

class ProductCard extends StatelessWidget {
  final Product product;

  const ProductCard({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      margin: EdgeInsets.symmetric(horizontal: 8), // Add horizontal spacing
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Product Image
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.network(
                product.imageUrl,
                height: 100,
                width: 100,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(width: 10),
            // Product Details
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    product.name,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(height: 5),
                  Text(
                    product.description,
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(height: 10),
                  Text(
                    "\$${product.price.toStringAsFixed(2)}",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.green,
                    ),
                  ),
                  SizedBox(height: 5),
                  Row(
                    children: [
                      Icon(Icons.star, color: Colors.yellow, size: 16),
                      SizedBox(width: 5),
                      Text(
                        product.rating.toString(),
                        style: TextStyle(fontSize: 14),
                      ),
                      Spacer(),
                      Text(
                        product.stock > 0 ? "In Stock" : "Out of Stock",
                        style: TextStyle(
                          fontSize: 14,
                          color: product.stock > 0 ? Colors.green : Colors.red,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
