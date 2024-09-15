
import 'package:flutter/material.dart';

class Product {
  final String imageUrl;
  final String category;
  final String title;
  final String location;
  final String time;
  final String price;

  Product({
    required this.imageUrl,
    required this.category,
    required this.title,
    required this.location,
    required this.time,
    required this.price,
  });
}

final List<Product> products = [
  Product(
    imageUrl: 'https://via.placeholder.com/150', // Replace with your image URL
    category: 'Properties',
    title: 'D5600 DX-Format V.02 Digital SLR',
    location: '3605 Parker Rd.',
    time: '27 Minutes Ago',
    price: '\$1,004.95',
  ),
  Product(
    imageUrl: 'https://via.placeholder.com/150', // Replace with your image URL
    category: 'Properties',
    title: 'D5600 DX-Format V.02 Digital SLR',
    location: '3605 Parker Rd.',
    time: '27 Minutes Ago',
    price: '\$1,004.95',
  ),
  Product(
    imageUrl: 'https://via.placeholder.com/150', // Replace with your image URL
    category: 'Properties',
    title: 'D5600 DX-Format V.02 Digital SLR',
    location: '3605 Parker Rd.',
    time: '27 Minutes Ago',
    price: '\$1,004.95',
  ),
  Product(
    imageUrl: 'https://via.placeholder.com/150', // Replace with your image URL
    category: 'Properties',
    title: 'D5600 DX-Format V.02 Digital SLR',
    location: '3605 Parker Rd.',
    time: '27 Minutes Ago',
    price: '\$1,004.95',
  ),

  // Add more products here
];

class ProductCard extends StatelessWidget {
  final Product product;

  const ProductCard({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      elevation: 3,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Image
          ClipRRect(
            borderRadius: const BorderRadius.vertical(top: Radius.circular(12.0)),
            child: Image.network(
              product.imageUrl,
              height: 120.0,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),

          // Details
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Category
                Text(
                  product.category,
                  style: const TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 5.0),

                // Title
                Text(
                  product.title,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 5.0),

                // Location and Time
                Row(
                  children: [
                    const Icon(Icons.location_on, size: 14.0, color: Colors.grey),
                    const SizedBox(width: 4.0),
                    Text(
                      product.location,
                      style: const TextStyle(color: Colors.grey, fontSize: 12.0),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
                const SizedBox(height: 5.0),

                Row(
                  children: [
                    const Icon(Icons.access_time, size: 14.0, color: Colors.grey),
                    const SizedBox(width: 4.0),
                    Text(
                      product.time,
                      style: const TextStyle(color: Colors.grey, fontSize: 12.0),
                    ),
                  ],
                ),
                const SizedBox(height: 5.0),

                // Price
                Text(
                  product.price,
                  style: const TextStyle(
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}