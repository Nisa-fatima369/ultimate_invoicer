import 'package:flutter/material.dart';
import 'package:ultimate_invoicer/constants.dart';


class PricingWidget extends StatelessWidget {
  PricingWidget({super.key});

  final String selectedOption = 'Option 1';
  final List<String> options = ['Option 1', 'Option 2', 'Option 3'];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(height: 10),
          Card(
            child: Column(children: [
              Container(
                padding: const EdgeInsets.only(left: 18, right: 18, top: 15),
                child: Column(
                  children: [
                    const Row(
                      children: [
                        Text(
                          'Opening Balance',
                          style: TextStyle(fontSize: 12, color: Colors.black),
                        ),
                        SizedBox(width: 4),
                        Icon(
                          Icons.info_outline_rounded,
                          color: Colors.grey,
                          size: 15,
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    // Container(
                    //   padding: const EdgeInsets.only(left: 10),
                    //   alignment: Alignment.centerLeft,
                    //   height: 50,
                    //   decoration: BoxDecoration(
                    //     border: Border.all(
                    //       color: Colors.grey, // Border color
                    //       width: 1.0, // Border width
                    //     ),
                    //     borderRadius:
                    //         BorderRadius.circular(10), // Border radius
                    //   ),
                    //   child: const Text('PCS'),
                    // ),
                    TextFormField(
                      controller: TextEditingController(text: ''),
                      onChanged: (newValue) {},
                      onSaved: (newValue) {},
                      style: const TextStyle(fontSize: 16.0, color: Colors.black),
                      decoration: kGreyTextField.copyWith(
                        labelText: 'PCS',
                      
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.only(left: 18, right: 18, top: 18),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Row(
                      children: [
                        Text(
                          'Sales Price',
                          style: TextStyle(fontSize: 12, color: Colors.black),
                        ),
                        SizedBox(width: 4),
                        Icon(
                          Icons.info_outline_rounded,
                          color: Colors.grey,
                          size: 15,
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    TextFormField(
                      controller: TextEditingController(text: ''),
                      onChanged: (newValue) {},
                      onSaved: (newValue) {},
                      style: const TextStyle(fontSize: 16.0, color: Colors.black),
                      decoration: kGreyTextField.copyWith(
                        labelText: '₹ 500.0',
                      
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.only(left: 18, right: 18, top: 18),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Row(
                      children: [
                        Text(
                          'Purchase Price',
                          style: TextStyle(fontSize: 12, color: Colors.black),
                        ),
                        SizedBox(width: 4),
                        Icon(
                          Icons.info_outline_rounded,
                          color: Colors.grey,
                          size: 15,
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    TextFormField(
                      controller: TextEditingController(text: ''),
                      onChanged: (newValue) {},
                      onSaved: (newValue) {},
                      style: const TextStyle(fontSize: 16.0, color: Colors.black),
                      decoration: kGreyTextField.copyWith(
                        labelText: '₹ 500.0',                  
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.only(left: 18, right: 18, top: 18),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Row(
                            children: [
                              Text(
                                'HSN',
                                style: TextStyle(
                                    fontSize: 12, color: Colors.black),
                              ),
                              SizedBox(width: 4),
                              Icon(
                                Icons.info_outline_rounded,
                                color: Colors.grey,
                                size: 15,
                              ),
                            ],
                          ),
                          const SizedBox(height: 8),
                          ListTile(
                            onTap: () {
                              _showEditInvoicePopup(context);
                            },
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                              side: const BorderSide(
                                color: Colors.grey,
                                width: 1.0,
                              ),
                            ),
                            tileColor: Colors.grey[100],
                            title: const Text(
                              'Ex: 6704',
                              style: TextStyle(color: Colors.grey),
                            ),
                            trailing: const Icon(Icons.search_rounded),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.only(left: 18, right: 18, top: 18),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Row(
                            children: [
                              Text(
                                'GST',
                                style: TextStyle(
                                    fontSize: 12, color: Colors.black),
                              ),
                              SizedBox(width: 4),
                              Icon(
                                Icons.info_outline_rounded,
                                color: Colors.grey,
                                size: 15,
                              ),
                            ],
                          ),
                          const SizedBox(height: 8),
                          ListTile(
                            onTap: () {
                              _showEditInvoicePopup(context);
                            },
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                              side: const BorderSide(
                                color: Colors.grey,
                                width: 1.0,
                              ),
                            ),
                            tileColor: Colors.grey[100],
                            title: const Text('None'),
                            trailing: const Icon(Icons.keyboard_arrow_down_rounded),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
            ]),
          ),
        ],
      ),
    );
  }

  void _showEditInvoicePopup(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return Container(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text(
                'Edit Invoice',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 16),
              TextFormField(
                initialValue: 'invoiceNo',
                decoration: const InputDecoration(
                  labelText: 'Invoice No',
                  border: OutlineInputBorder(),
                ),
                onChanged: (value) {
                  // setState(() {
                  //   invoiceNo = value;
                  // });
                },
              ),
              const SizedBox(height: 16),
              TextFormField(
                initialValue: 'invoiceDate',
                decoration: const InputDecoration(
                  labelText: 'Invoice Date',
                  border: OutlineInputBorder(),
                ),
                onChanged: (value) {
                  
                },
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context); // Close the bottom sheet
                },
                child: const Text('Save'),
              ),
            ],
          ),
        );
      },
    );
  }
}
