import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text(
          'Store Name',
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: GestureDetector(
              child: const Icon(Icons.notifications),
              onTap: () {},
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 10),
            const Row(
              children: [
                Expanded(
                  child: Card(
                    child: ListTile(
                      title: Text('\$ 500'),
                      subtitle: Text('To Collect'),
                    ),
                  ),
                ),
                Expanded(
                  child: Card(
                    child: ListTile(
                      title: Text('\$ 200'),
                      subtitle: Text('To Pay'),
                    ),
                  ),
                ),
              ],
            ),
            const Row(
              children: [
                Expanded(
                  child: Card(
                    child: ListTile(
                      title: Text('\$ 50000'),
                      subtitle: Text('Stock Value'),
                    ),
                  ),
                ),
                Expanded(
                  child: Card(
                    child: ListTile(
                      title: Text('Reports'),
                      subtitle: Text(''),
                    ),
                  ),
                ),
              ],
            ),
            const Row(
              children: [
                Expanded(
                  child: Card(
                    child: ListTile(
                      title: Text('\$ 2000'),
                      subtitle: Text('This Week Sale'),
                    ),
                  ),
                ),
                Expanded(
                  child: Card(
                    child: ListTile(
                      title: Text('\$ 50000'),
                      subtitle: Text('Total Balance'),
                    ),
                  ),
                ),
              ],
            ),
            GestureDetector(
              onTap: () {
                // Navigate to the desired screen when Section 2 is clicked
              },
              child: const SizedBox(
                height: 40,
                child: ListTile(
                  title: Text(
                    'Transactions',
                    style: TextStyle(fontSize: 14, color: Colors.black54),
                  ),
                  trailing: Text(
                    'Recover Deleted Invoices',
                    style: TextStyle(fontSize: 13, color: Colors.deepPurple),
                  ),
                  // trailing: Icon(Icons.arrow_forward),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Card(
              child: Container(
                alignment: Alignment.centerLeft,
                child: Column(
                  children: [
                    const SizedBox(height: 20),
                    Row(
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: const CircleAvatar(
                                  child: Icon(Icons.inventory_rounded),
                                ),
                              ),
                              const Text('Invoice'),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: const CircleAvatar(
                                  child: Icon(Icons.shopping_cart),
                                ),
                              ),
                              const Text('Purchase'),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: const CircleAvatar(
                                  child: Icon(Icons.sell),
                                ),
                              ),
                              const Text('Sale'),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: const CircleAvatar(
                                  child: Icon(Icons.note_add),
                                ),
                              ),
                              const Text('Credit Note'),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Row(
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: const CircleAvatar(
                                  child: Icon(Icons.note_add),
                                ),
                              ),
                              const Text('Debit Note'),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: const CircleAvatar(
                                  child: Icon(Icons.calculate),
                                ),
                              ),
                              const Text('Estimate'),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: const CircleAvatar(
                                  child: Icon(Icons.money_off),
                                ),
                              ),
                              const Text('Expences'),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: const CircleAvatar(
                                  child: Icon(Icons.payment),
                                ),
                              ),
                              const Text('Payment'),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                  ],
                ),
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.all(10),
              child: const Text(
                'Others',
                style: TextStyle(color: Colors.black54, fontSize: 15),
              ),
            ),
            Card(
              child: Container(
                alignment: Alignment.centerLeft,
                child: Column(
                  children: [
                    const SizedBox(height: 20),
                    Row(
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: const CircleAvatar(
                                  child: Icon(Icons.people),
                                ),
                              ),
                              const Text('Parties'),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: const CircleAvatar(
                                  child: Icon(Icons.inventory),
                                ),
                              ),
                              const Text('Products'),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: const CircleAvatar(
                                  child: Icon(Icons.home),
                                ),
                              ),
                              const Text('Warehouses'),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: const CircleAvatar(
                                  child: Icon(Icons.account_balance),
                                ),
                              ),
                              const Text('Accounts'),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
