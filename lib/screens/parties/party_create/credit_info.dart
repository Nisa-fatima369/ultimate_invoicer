import 'package:flutter/material.dart';
import 'package:ultimate_invoicer/constants.dart';
import 'package:ultimate_invoicer/theme/colors.dart';

class CreditInfoWidget extends StatefulWidget {
  CreditInfoWidget({super.key});

  @override
  State<CreditInfoWidget> createState() => _CreditInfoWidgetState();
}

class _CreditInfoWidgetState extends State<CreditInfoWidget> {
  final radioButton = [
    'Receive',
    'Pay',
  ];
  final String selectedOption = 'Option 1';

  final List<String> options = ['Option 1', 'Option 2', 'Option 3'];
  int currentIndex = 0;

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
                child: const Row(
                  children: [
                    Expanded(
                      flex: 6,
                      child: Row(
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
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.only(left: 18, right: 18),
                child: Row(
                  children: [
                    Expanded(
                      flex: 6,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 8),
                          TextFormField(
                            controller: TextEditingController(text: ''),
                            onChanged: (newValue) {},
                            onSaved: (newValue) {},
                            style: const TextStyle(
                                fontSize: 16.0, color: Colors.black),
                            decoration: kGreyTextField.copyWith(
                              labelText: '₹ 0.0',
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      flex: 4,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const SizedBox(height: 8),
                          Row(
                            children: List.generate(
                              2,
                              (index) => GestureDetector(
                                onTap: () {
                                  setState(() {
                                    currentIndex = index;
                                  });
                                },
                                child: AnimatedContainer(
                                  curve: Curves.easeInOut,
                                  duration: const Duration(microseconds: 300),
                                  margin:
                                      const EdgeInsets.symmetric(horizontal: 5),
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 16, vertical: 12),
                                  decoration: BoxDecoration(
                                    color: currentIndex == index
                                        ? AppColor.primary
                                        : AppColor.secondary,
                                    borderRadius: BorderRadius.circular(28),
                                  ),
                                  child: Text(
                                    radioButton[index],
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyMedium!
                                        .copyWith(
                                            color: currentIndex == index
                                                ? AppColor.secondary
                                                : AppColor.primary),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
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
                      // tileColor: Colors.grey[100],
                      // title: Text(controller.createPeriodValue.value),
                      trailing: const Icon(Icons.keyboard_arrow_down_rounded),
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
                          'Credit Limit',
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
                      style:
                          const TextStyle(fontSize: 16.0, color: AppColor.text),
                      decoration: kGreyTextField.copyWith(
                        labelText: '₹ 0.0',
                      ),
                    ),
                  ],
                ),
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
                onChanged: (value) {},
              ),
              const SizedBox(height: 16),
              TextFormField(
                initialValue: 'invoiceDate',
                decoration: const InputDecoration(
                  labelText: 'Invoice Date',
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
}
