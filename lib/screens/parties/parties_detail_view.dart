import 'package:flutter/material.dart';
import 'package:ultimate_invoicer/screens/invoices/invoice.dart';
import 'package:ultimate_invoicer/screens/parties/party_detail/party_detail.dart';
import 'package:ultimate_invoicer/screens/parties/party_detail/transaction_widget.dart';

class PartyDetail extends StatelessWidget {
  const PartyDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Party Name',
        ),
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
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Card(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 18,
                      left: 18.0,
                      right: 18.0,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Party Name",
                          style: TextStyle(fontSize: 15),
                        ),
                        TextButton.icon(
                          onPressed: () {},
                          icon: const Icon(Icons.edit_document),
                          label: const Text("Statement >"),
                        ),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(
                      top: 18,
                      left: 18.0,
                      right: 18.0,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "₹ 126",
                          style:
                              TextStyle(fontSize: 18, color: Colors.deepPurple),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 20.0),
                          child: Text(
                            "Customer",
                            style:
                                TextStyle(fontSize: 14, color: Colors.black54),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Expanded(
                            child: ElevatedButton(
                          onPressed: () {},
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Colors.deepPurple[50]!),
                              foregroundColor: MaterialStateProperty.all<Color>(
                                  Colors.white)),
                          child: const Text(
                            'Send Reminder',
                            style: TextStyle(color: Colors.deepPurple),
                          ),
                        ))
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: DefaultTabController(
              length: 2,
              child: Column(
                children: [
                  Container(
                    constraints: const BoxConstraints.expand(height: 50.0),
                    height: 50,
                    child: const TabBar(
                      labelColor: Colors.deepPurple,
                      unselectedLabelColor: Colors.black,
                      tabs: [
                        Tab(
                          child: Text(
                            "Transactions",
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
                  Expanded(
                    child: TabBarView(
                      children: [
                        TransactionsWidget(),
                        const DetailsWidget(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
