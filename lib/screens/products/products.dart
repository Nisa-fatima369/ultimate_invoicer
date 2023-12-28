import 'package:flutter/material.dart';
import 'package:ultimate_invoicer/screens/products/product_create_view.dart';
import 'package:ultimate_invoicer/screens/products/product_view.dart';

class Products extends StatefulWidget {
  const Products({super.key});

  @override
  State<Products> createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
            'Products',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.notifications),
              onPressed: () {
                // Handle notification icon press
              },
            ),
          ]),
      body: ListView.builder(
          itemCount: 5,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(4.0),
              child: GestureDetector(
                child: Card(
                  child: Container(
                    padding: const EdgeInsets.all(8.0),
                    child: const Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Text(
                              'name',
                              style: TextStyle(fontSize: 14),
                            ),
                            Text(
                            'inventory',
                              style: TextStyle(fontSize: 14),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              'Box',
                              style: TextStyle(
                                  fontSize: 14, color: Colors.black38),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Column(
                              children: [
                                Text(
                                  'Sales Price',
                                  style: TextStyle(
                                      fontSize: 14, color: Colors.black38),
                                ),
                                Text(
                                  '₹ salePrice',
                                  style: TextStyle(fontSize: 14),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Text(
                                  'Purchase Price',
                                  style: TextStyle(
                                      fontSize: 14, color: Colors.black38),
                                ),
                                Text(
                                  '₹ purchasePrice',
                                  style: TextStyle(fontSize: 14),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Icon(
                                  Icons.store,
                                  color: Colors.deepPurple,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ProductView()));
                },
              ),
            );
          }),
      floatingActionButton: FloatingActionButton(
        heroTag: "product1",
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => const ProductCreateView() ));
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}