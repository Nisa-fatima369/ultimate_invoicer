import 'package:flutter/material.dart';

class StockWidget extends StatelessWidget {
  const StockWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          child: Container(
            padding: const EdgeInsets.only(left: 18, right: 18),
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      flex: 5,
                      child: Container(
                        padding: const EdgeInsets.only(top: 18),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Row(
                              children: [
                                Text(
                                  'Opening Stock',
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
                            SizedBox(
                              height: 50,
                              child: ListTile(
                                contentPadding: const EdgeInsets.symmetric(
                                    horizontal: 12, vertical: 0),
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
                                  'Ex: 24',
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 14),
                                ),
                                trailing: const Text(
                                  '/PCS',
                                  style: TextStyle(fontSize: 15),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      flex: 5,
                      child: Container(
                        padding: const EdgeInsets.only(top: 18),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Row(
                              children: [
                                Text(
                                  'As of Date',
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
                            SizedBox(
                              height: 50,
                              child: ListTile(
                                contentPadding: const EdgeInsets.symmetric(
                                    horizontal: 12, vertical: 0),
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
                                trailing: const Icon(Icons.calendar_month),
                              ),
                            ),
                          ],
                        ),
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
          height: 50,
          color: Colors.white,
          alignment: Alignment.centerLeft,
          child: ListTile(
            title: const Text('Low stock alert'),
            trailing: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.toggle_off_outlined,
                size: 30,
                color: Colors.deepPurple,
              ),
            ),
            leading: const Icon(
              Icons.notifications,
              size: 20,
              color: Colors.deepPurple,
            ),
          ),
        )
      ],
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
