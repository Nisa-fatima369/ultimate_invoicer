import 'package:flutter/material.dart';
import 'package:ultimate_invoicer/screens/products/product_detail/product_details_widget.dart';
import 'package:ultimate_invoicer/screens/products/product_detail/product_timeline_widget.dart';

class ProductView extends StatelessWidget {
  const ProductView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ProductView'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.edit,
              size: 20,
            ),
          ),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.delete,
                size: 20,
                color: Colors.red,
              )),
        ],
      ),
      body: Column(
        children: [
          Container(
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.only(top: 30, left: 18, right: 18),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Sample Item',
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                ),
                SizedBox(height: 20),
                Text(
                  'View Item Report  >',
                  style: TextStyle(
                      color: Colors.deepPurple, fontWeight: FontWeight.w500),
                ),
                SizedBox(height: 30),
              ],
            ),
          ),
          const Divider(height: 2),
          const SizedBox(height: 10),
          Card(
            child: Container(
              padding: const EdgeInsets.only(top: 20, left: 18, right: 18),
              child: Column(
                children: [
                  const Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Sales Price',
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 13),
                            ),
                            Text(
                              '₹ 220',
                              style: TextStyle(fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Purchase Price',
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 13),
                            ),
                            Text(
                              '₹ 190',
                              style: TextStyle(fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Stock Quantity',
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 13),
                            ),
                            Text(
                              '123.0 BOX',
                              style: TextStyle(fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Container(
                    alignment: Alignment.centerLeft,
                    child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Stock Value',
                          style: TextStyle(color: Colors.grey, fontSize: 13),
                        ),
                        Text(
                          '₹ 20,866.07',
                          style: TextStyle(fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          ),
          const SizedBox(height: 10),
          Expanded(
            child: DefaultTabController(
              length: 2,
              child: Column(
                children: [
                  Container(
                    constraints: const BoxConstraints.expand(height: 50.0),
                    child: const TabBar(
                      labelColor: Colors.deepPurple,
                      unselectedLabelColor: Colors.black,
                      tabs: [
                        Tab(
                          child: Text(
                            "Item Timeline",
                            style: TextStyle(fontSize: 14),
                          ),
                        ),
                        Tab(
                          child: Text(
                            "Details",
                            style: TextStyle(fontSize: 14),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Expanded(
                    child: TabBarView(
                      children: [
                        ItemTimelineWidget(),
                        ProductDetailsWidget(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 10),
          
          Container(
            padding: const EdgeInsets.all(18),
            width: double.infinity,
            child: ElevatedButton(
              style: ButtonStyle(
                  foregroundColor: MaterialStateProperty.all(Colors.white),
                  backgroundColor:
                      MaterialStateProperty.all(Colors.deepPurple)),
              onPressed: () {},
              child: const Text('Save'),
            ),
          )
        ],
      ),
    );
  }
}