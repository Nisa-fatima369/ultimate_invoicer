import 'package:flutter/material.dart';
import 'package:ultimate_invoicer/constants.dart';
import 'package:ultimate_invoicer/screens/products/product_create/others_widget.dart';
import 'package:ultimate_invoicer/screens/products/product_create/pricing_widget.dart';
import 'package:ultimate_invoicer/screens/products/product_create/stock_widget.dart';

class ProductCreateView extends StatelessWidget {
  const ProductCreateView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Product Create'), actions: [
        IconButton(
          icon: const Icon(Icons.notifications),
          onPressed: () {
            // Handle notification icon press
          },
        ),
      ]),
      body: Column(
        children: [
          const SizedBox(height: 5),
          Card(
              child: Column(
            children: [
              Container(
                padding: const EdgeInsets.only(left: 18, right: 18, top: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                      text: const TextSpan(
                        text: 'Item Name',
                        style: TextStyle(fontSize: 12, color: Colors.black),
                        children: [
                          TextSpan(
                            text: ' *',
                            style: TextStyle(fontSize: 14, color: Colors.red),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 8),
                    TextFormField(
                      controller: TextEditingController(text: ''),
                      onChanged: (newValue) {},
                      onSaved: (newValue) {},
                      style: const TextStyle(fontSize: 16.0, color: Colors.black),
                      decoration: kGreyTextField.copyWith(
                        labelText: 'Ex: Kissan Fruit Jam 500 gm',
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              
            ],
          )),
          const SizedBox(height: 10),
          Expanded(
            child: DefaultTabController(
              length: 3,
              child: Column(
                children: [
                  Container(
                    constraints: const BoxConstraints.expand(height: 50.0),
                    child: const TabBar(
                      labelColor: Colors.deepPurple,
                      unselectedLabelColor: Colors.black45,
                      tabs: [
                        Tab(
                            child: Text(
                          "Pricing",
                          style: TextStyle(fontSize: 14),
                        )),
                        Tab(
                          child: Text(
                            "Stock",
                            style: TextStyle(fontSize: 14),
                          ),
                        ),
                        Tab(
                          child: Text(
                            "Other",
                            style: TextStyle(fontSize: 14),
                          ),
                        ),
                      ],
                    ),
                  ),

                  Expanded(
                    child: TabBarView(
                      children: [
                        PricingWidget(),
                        const StockWidget(),
                        const OthersWidget(),
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