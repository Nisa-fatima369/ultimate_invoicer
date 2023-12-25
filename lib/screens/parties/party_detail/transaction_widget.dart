import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ultimate_invoicer/screens/invoices/invoice_view.dart';


class TransactionsWidget extends StatelessWidget {
  // Dummy data for Section 3 cards
  final List<Map<String, String>> invoiceData = [
    {
      'customer': 'Customer 1',
      'invoiceNo': 'INV001',
      'invoiceDate': '2023-06-14',
      'invoiceAmount': '100.00',
      'invoiceStatus': 'Paid',
    },
    {
      'customer': 'Customer 2',
      'invoiceNo': 'INV002',
      'invoiceDate': '2023-06-15',
      'invoiceAmount': '200.00',
      'invoiceStatus': 'Pending',
    },
    {
      'customer': 'Customer 3',
      'invoiceNo': 'INV002',
      'invoiceDate': '2023-06-15',
      'invoiceAmount': '200.00',
      'invoiceStatus': 'Pending',
    },
    {
      'customer': 'Customer 4',
      'invoiceNo': 'INV002',
      'invoiceDate': '2023-06-15',
      'invoiceAmount': '200.00',
      'invoiceStatus': 'Pending',
    },
    {
      'customer': 'Customer 5',
      'invoiceNo': 'INV002',
      'invoiceDate': '2023-06-15',
      'invoiceAmount': '200.00',
      'invoiceStatus': 'Pending',
    },
    // Add more invoice data entries as needed
  ];

  TransactionsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: invoiceData.length,
          itemBuilder: (context, index) {
            final invoice = invoiceData[index];
            return Padding(
              padding: const EdgeInsets.all(4.0),
              child: Card(
                child: Column(
                  children: [
                    ListTile(
                      title: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            invoice['customer']!,
                            style: const TextStyle(fontSize: 14),
                          ),
                          Text(
                            invoice['invoiceNo']!,
                            style: const TextStyle(fontSize: 14),
                          ),
                          Text(
                            invoice['invoiceDate']!,
                            style: const TextStyle(fontSize: 13),
                          ),
                        ],
                      ),
                      trailing: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            invoice['invoiceAmount']!,
                            style: const TextStyle(fontSize: 13),
                          ),
                          Text(
                            invoice['invoiceStatus']!,
                            style: const TextStyle(fontSize: 13),
                          ),
                        ],
                      ),
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => InvoiceView()));
                      },
                    ),
                    const Divider(
                      height: 2,
                      color: Colors.black,
                      thickness: .2,
                      indent: 0,
                      endIndent: 0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(
                          child: TextButton.icon(
                            icon: const FaIcon(
                              FontAwesomeIcons.whatsapp,
                              size: 20,
                            ),
                            onPressed: () {
                              // Handle share on WhatsApp link press
                            },
                            label: const Text(
                              'Share on WhatsApp',
                              style: TextStyle(fontSize: 12),
                            ),
                          ),
                        ),
                        Expanded(
                          child: TextButton.icon(
                            icon: const FaIcon(
                              FontAwesomeIcons.indianRupeeSign,
                              size: 20,
                            ),
                            onPressed: () {
                              // Handle record invoice payment link press
                            },
                            label: const Text(
                              'Record Invoice Payment',
                              style: TextStyle(fontSize: 12),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }
}