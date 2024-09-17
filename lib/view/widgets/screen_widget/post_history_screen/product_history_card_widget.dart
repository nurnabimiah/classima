

import 'package:flutter/material.dart';



class ProductHistoryCardWidget extends StatelessWidget {
  const ProductHistoryCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Product Image
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.network(
                'https://via.placeholder.com/100', // Replace with your image URL
                width: 90,
                height: 100,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(width: 10),

            // Product Details and Price
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'D5600 DX-Format V.02',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Digital SLR',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey[600],
                    ),
                  ),
                  const SizedBox(height: 10),

                  const Row(
                    children: [
                      Icon(
                        Icons.location_on,
                        size: 16,
                        color: Colors.grey,
                      ),
                      SizedBox(width: 4),
                      Text(
                        '3605 Parker Rd.',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                  const SizedBox(height: 5),

                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.access_time,
                            size: 16,
                            color: Colors.grey,
                          ),
                          SizedBox(width: 4),
                          Text(
                            '27 Minutes Ago',
                            style: TextStyle(color: Colors.grey),
                          ),
                        ],
                      ),
                      Text(
                        '\$55,04.95',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.red,
                        ),
                      ),


                    ],
                  ),
                ],
              ),
            ),
            // Three-dot menu and Price
            const Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Icon(Icons.more_vert),
                SizedBox(height: 40), // Space to push the price down

              ],
            ),
          ],
        ),
      ),
    );
  }
}