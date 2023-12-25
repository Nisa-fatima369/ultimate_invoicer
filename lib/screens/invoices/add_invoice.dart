import 'package:flutter/material.dart';
import 'package:ultimate_invoicer/constants.dart';
import 'package:ultimate_invoicer/theme/colors.dart';

class AddInvoice extends StatefulWidget {
  const AddInvoice({super.key});

  @override
  State<AddInvoice> createState() => _AddInvoiceState();
}

class _AddInvoiceState extends State<AddInvoice> {
  final String selectedParty = 'party1';

  final List<Item> items = [];

  final String invoiceNo = '';

  final String invoiceDate = '';

  final String partyName = '';

  final String partyPhone = '';

  // final List<String> allItem = [
  //   'Item 1',
  //   'Item 2',
  //   'Item 3',
  //   'Item 4',
  //   // Add more items as needed
  // ];

  final List<String> options = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'item 5',
    'item 6',
    'item 7',
    'item 8',
  ];
  Future<String?> optionBottomSheet(
      BuildContext context, List<String> options) async {
    return await showModalBottomSheet(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      context: context,
      builder: (context) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Select Item',
                style: Theme.of(context).textTheme.labelLarge,
              ),
              y10,
              Expanded(
                child: ListView.builder(
                  itemCount: 6,
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.pop(context, options[index]);
                      },
                      child: ListTile(
                        leading: const Icon(Icons.circle_outlined,
                            color: AppColor.secondary),
                        title: Text(options[index]),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  final TextEditingController categoryController = TextEditingController();

  final TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Create Invoice',
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Card(
              child: ListTile(
                title: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Invoice No",
                      style: TextStyle(fontSize: 15),
                    ),
                    Text(
                      "Invoice Date",
                      style: TextStyle(fontSize: 13),
                    ),
                  ],
                ),
                trailing: IconButton(
                  onPressed: () {
                    // Handle edit invoice button press
                    _showEditInvoicePopup(context);
                  },
                  icon: const CircleAvatar(
                      child: Icon(
                    Icons.edit,
                    size: 18,
                    color: Colors.deepPurple,
                  )),
                ),
              ),
            ),
            Card(
              child: Column(
                children: [
                  ListTile(
                    title: TextFormField(
                      readOnly: true,
                      enabled: true,
                      cursorColor: AppColor.primary,
                      controller: categoryController,
                      decoration: kTextField.copyWith(
                        fillColor: AppColor.border.withOpacity(0.1),
                        hintText: 'Select Item',
                      ),
                      onTap: () async {
                        final value = await optionBottomSheet(context, options);
                        if (value != null) {
                          categoryController.text = value;
                          setState(() {});
                        }
                      },
                    ),
                    trailing: IconButton(
                      onPressed: () {
                        _showAddPartyDialog(context);
                      },
                      icon: const CircleAvatar(child: Icon(Icons.add)),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Items',
                    style: TextStyle(fontSize: 14, color: Colors.black54),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      navigateToAddItemScreen();
                    },
                    child: const Text(
                      '+ Add Item',
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
                ],
              ),
            ),
            itemCard(),
            itemCard(),
            itemCard(),
            Card(
              child: Column(
                children: [
                  const SizedBox(
                    height: 30,
                    child: ListTile(
                      dense: true,
                      title: Text(
                        "Item Subtotal",
                        style: TextStyle(fontSize: 14),
                      ),
                      trailing: Text(
                        "136.00",
                        style: TextStyle(fontSize: 14),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                    child: ListTile(
                      dense: true,
                      title: Row(
                        children: [
                          const Text(
                            "Discount",
                            style: TextStyle(fontSize: 14),
                          ),
                          IconButton(
                            onPressed: () {
                              // Handle generate invoice button press
                            },
                            icon: const Icon(
                              Icons.edit,
                              size: 18,
                              color: Colors.deepPurple,
                            ),
                          ),
                        ],
                      ),
                      trailing: const Text(
                        "0",
                        style: TextStyle(fontSize: 14),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                    child: ListTile(
                      dense: true,
                      title: Text(
                        "Tax",
                        style: TextStyle(fontSize: 14),
                      ),
                      trailing: Text(
                        "0",
                        style: TextStyle(fontSize: 14),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                    child: ListTile(
                      dense: true,
                      title: Text(
                        "Total Amount",
                        style: TextStyle(fontSize: 14),
                      ),
                      trailing: Text(
                        "0",
                        style: TextStyle(fontSize: 14),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                    child: ListTile(
                      dense: true,
                      title: Row(children: [
                        const Text(
                          "Received Amount",
                          style: TextStyle(fontSize: 14),
                        ),
                        IconButton(
                          onPressed: () {
                            // Handle generate invoice button press
                          },
                          icon: const Icon(
                            Icons.edit,
                            size: 18,
                            color: Colors.deepPurple,
                          ),
                        ),
                      ]),
                      trailing: const Text(
                        "0",
                        style: TextStyle(fontSize: 14),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 70,
        color: Colors.white,
        child: Row(children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: ElevatedButton(
                onPressed: () {
                  // Handle generate invoice button press
                },
                child: const Text('Save & New'),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {
                  // Handle generate invoice button press
                },
                child: const Text('Generate Bill'),
              ),
            ),
          ),
        ]),
      ),
    );
  }

  Widget itemCard() {
    return Card(
      child: ListTile(
        dense: true,
        title: const Text(
          "Product 1",
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
        ),
        subtitle: const Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Qty x Rate",
                  style: TextStyle(fontSize: 14),
                ),
                Text(
                  "1 Pcs x 100",
                  style: TextStyle(fontSize: 12, color: Colors.black54),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Tax",
                  style: TextStyle(fontSize: 14),
                ),
                Text(
                  "14%+12% = Rs 26",
                  style: TextStyle(fontSize: 12, color: Colors.black54),
                ),
              ],
            ),
          ],
        ),
        trailing: Column(
          children: [
            const Text(
              "Rs 126",
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
                color: Colors.deepPurple,
              ),
            ),
            Expanded(
              child: CircleAvatar(
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.edit,
                    size: 18,
                    color: Colors.deepPurple,
                  ),
                ),
              ),
            )
          ],
        ),
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
              y15,
              TextFormField(
                initialValue: invoiceNo,
                decoration: const InputDecoration(
                  labelText: 'Invoice No',
                  border: OutlineInputBorder(),
                ),
                onChanged: (value) {},
              ),
              y15,
              TextFormField(
                initialValue: invoiceDate,
                decoration: const InputDecoration(
                  labelText: 'Invoice Date',
                  border: OutlineInputBorder(),
                ),
                onChanged: (value) {},
              ),
              y15,
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

  void _showAddPartyDialog(BuildContext context) {
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
                'Add Party',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 16),
              TextFormField(
                initialValue: invoiceNo,
                decoration: const InputDecoration(
                  labelText: 'Party Name',
                  border: OutlineInputBorder(),
                ),
                onChanged: (value) {},
              ),
              const SizedBox(height: 16),
              TextFormField(
                initialValue: partyPhone,
                decoration: const InputDecoration(
                  labelText: 'Party Mobile',
                  border: OutlineInputBorder(),
                ),
                onChanged: (value) {},
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

  void navigateToAddItemScreen() {
    // Implement navigation to the add item screen
  }

  void navigateToEditItemScreen(int index) {
    // Implement navigation to the edit item screen
  }
}

class Item {
  String name;
  int quantity;

  Item({required this.name, required this.quantity});
}
