import 'package:flutter/material.dart';

class BusinessInfoWidget extends StatelessWidget {
  const BusinessInfoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 10),
        Card(
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.only(left: 18, right: 18, top: 18),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                      text: const TextSpan(
                        text: 'GST Number',
                        style: TextStyle(fontSize: 12, color: Colors.black),
                        children: [
                          TextSpan(
                            text: ' *',
                            style: TextStyle(fontSize: 14, color: Colors.red),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 8),
                    TextFormField(
                      controller: TextEditingController(text: ''),
                      onChanged: (newValue) {},
                      onSaved: (newValue) {},
                      style: const TextStyle(fontSize: 16.0, color: Colors.black),
                      decoration: InputDecoration(
                        labelText: 'Ex: 29GGGGG1314R9Z6',
                        labelStyle:
                            TextStyle(fontSize: 13.0, color: Colors.grey[400]),
                        floatingLabelBehavior: FloatingLabelBehavior.never,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                          borderSide:
                              const BorderSide(color: Colors.grey, width: 1.0),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                          borderSide:
                              const BorderSide(color: Colors.grey, width: 1.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        filled: true,
                        fillColor: Colors.grey[100],
                        contentPadding: const EdgeInsets.symmetric(horizontal: 10.0),
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
                    RichText(
                      text: const TextSpan(
                        text: 'PAN Number',
                        style: TextStyle(fontSize: 12, color: Colors.black),
                        children: [
                          TextSpan(
                            text: ' *',
                            style: TextStyle(fontSize: 14, color: Colors.red),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 8),
                    TextFormField(
                      controller: TextEditingController(text: ''),
                      onChanged: (newValue) {},
                      onSaved: (newValue) {},
                      style: const TextStyle(fontSize: 16.0, color: Colors.black),
                      decoration: InputDecoration(
                        labelText: 'Ex: ABCTY1234D',
                        labelStyle:
                            TextStyle(fontSize: 13.0, color: Colors.grey[400]),
                        floatingLabelBehavior: FloatingLabelBehavior.never,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                          borderSide:
                              const BorderSide(color: Colors.grey, width: 1.0),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                          borderSide:
                              const BorderSide(color: Colors.grey, width: 1.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        filled: true,
                        fillColor: Colors.grey[100],
                        contentPadding: const EdgeInsets.symmetric(horizontal: 10.0),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
        const Card(
          child: ListTile(
            leading: Icon(
          Icons.business,
          size: 20,
          color: Colors.deepPurple,
            ),
            title: Text(
          'Billing Address',
          style: TextStyle(fontSize: 14),
            ),
            trailing: Icon(
          Icons.arrow_forward_ios_rounded,
          size: 15,
          color: Colors.deepPurple,
            ),
          ),
        )
      ],
    );
  }
}
