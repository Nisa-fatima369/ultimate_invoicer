import 'package:flutter/material.dart';

class OtherDetailsWidget extends StatelessWidget {
  OtherDetailsWidget({super.key});

  final String selectedOption = 'Option 1';
  final List<DropdownMenuItem<String>>? options = [];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 10),
        Card(
          child: Container(
            padding: const EdgeInsets.only(left: 18, right: 18, top: 18),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Row(
                  children: [
                    Text(
                      'Credit Period(Days)',
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
                const SizedBox(height: 10),
                ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Container(
                    width: 150,
                    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 5),
                    color: Colors.grey[300],
                    child: const Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Expanded(
                          child: DropdownButtonHideUnderline(
                            child: Text('Select Category'),
                          ),
                        ),
                        Icon(
                          Icons.keyboard_arrow_down_rounded,
                          color: Colors.black,
                          size: 24,
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ],
    );
  }

  void showEditInvoicePopup(BuildContext context) {
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
