import 'package:flutter/material.dart';

class ProductDetailsWidget extends StatelessWidget {
  const ProductDetailsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          child: Container(
            padding: const EdgeInsets.only(top: 20, left: 18, right: 18),
            child: const Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Item Code',
                            style: TextStyle(color: Colors.grey, fontSize: 13),
                          ),
                          Text(
                            '8901262010023',
                            style: TextStyle(
                                fontSize: 13, fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Measuring Unit',
                            style: TextStyle(color: Colors.grey, fontSize: 13),
                          ),
                          Text(
                            'BOX',
                            style: TextStyle(
                                fontSize: 13, fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Low Stock at',
                            style: TextStyle(color: Colors.grey, fontSize: 13),
                          ),
                          Text(
                            '20.0 BOX',
                            style: TextStyle(
                                fontSize: 13, fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Tax Rate',
                            style: TextStyle(color: Colors.grey, fontSize: 13),
                          ),
                          Text(
                            '12.0%',
                            style: TextStyle(
                                fontSize: 13, fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'HSN Code',
                            style: TextStyle(color: Colors.grey, fontSize: 13),
                          ),
                          Text(
                            '--',
                            style: TextStyle(
                                fontSize: 13, fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Item Type',
                            style: TextStyle(color: Colors.grey, fontSize: 13),
                          ),
                          Text(
                            'Product',
                            style: TextStyle(
                                fontSize: 13, fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
              ],
            ),
          ),
        ),
        Card(
          child: Container(
            height: 50,
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.only(top: 5, left: 18, right: 18),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Item Description',
                  style: TextStyle(color: Colors.grey, fontSize: 13),
                ),
                Text(
                  'Amul Buttor 500gm',
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
