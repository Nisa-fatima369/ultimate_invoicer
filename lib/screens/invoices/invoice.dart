import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ultimate_invoicer/config/routes.dart';

class Invoice extends StatefulWidget {
  const Invoice({Key? key}) : super(key: key);

  @override
  State<Invoice> createState() => _InvoiceState();
}

class _InvoiceState extends State<Invoice> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Invoice',
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications),
            onPressed: () {
              // Handle notification icon press
            },
          ),
        ],
      ),
      body: ListView.builder(
          itemCount: 5,
          itemBuilder: (context, index) {
            return Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
              child: Card(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ListTile(
                      title: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'customer',
                            style: TextStyle(fontSize: 14),
                          ),
                          Text(
                            'invoiceNo',
                            style: TextStyle(fontSize: 14),
                          ),
                          Text(
                            'invoiceDate',
                            style: TextStyle(fontSize: 13),
                          ),
                        ],
                      ),
                      trailing: const Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            'invoiceAmount',
                            style: TextStyle(fontSize: 13),
                          ),
                          Text(
                            'invoiceStatus',
                            style: TextStyle(fontSize: 13),
                          ),
                        ],
                      ),
                      onTap: () {
                        Navigator.pushNamed(context, Routes.invoiceView);
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
      floatingActionButton: FloatingActionButton(
        heroTag: "invoice1",
        onPressed: () {
          Navigator.pushNamed(context, Routes.addInvoice);
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
