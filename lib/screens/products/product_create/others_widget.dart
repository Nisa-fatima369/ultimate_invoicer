import 'package:flutter/material.dart';
import 'package:ultimate_invoicer/constants.dart';

class OthersWidget extends StatelessWidget {
  const OthersWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
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
                      padding: const EdgeInsets.symmetric(
                          horizontal: 12, vertical: 5),
                      color: Colors.grey[300],
                      child: const Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Expanded(
                            child: DropdownButtonHideUnderline(
                              child: Text(
                                'Select Category',
                                style: TextStyle(fontSize: 14),
                              ),
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
                  Column(
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
                        maxLines: 3,
                        style: const TextStyle(
                            fontSize: 16.0, color: Colors.black),
                        decoration: kGreyTextField.copyWith(
                          labelText: '₹ 500.0',
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                ],
              ),
            ),
          ),
          Container(
            color: Colors.white,
            child: Row(
              children: [
                Checkbox(
                  value: true,
                  onChanged: (bool? value) {},
                ),
                const Text('Show in Online Store'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
