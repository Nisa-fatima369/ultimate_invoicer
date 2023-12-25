import 'package:flutter/material.dart';
import 'package:ultimate_invoicer/screens/parties/party_create/business_info.dart';
import 'package:ultimate_invoicer/screens/parties/party_create/credit_info.dart';
import 'package:ultimate_invoicer/screens/parties/party_create/other_details.dart';

class PartyCreate extends StatefulWidget {
  const PartyCreate({super.key});

  @override
  State<PartyCreate> createState() => _PartyCreateState();
}

class _PartyCreateState extends State<PartyCreate> {
  final TextEditingController partyNameController = TextEditingController();
  final TextEditingController customerNumberController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Party Create'),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: [
          const SizedBox(height: 5),
          Card(
              child: Column(
            children: [
              Container(
                padding: const EdgeInsets.only(left: 18, right: 18, top: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                      text: const TextSpan(
                        text: 'Party Name',
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
                      controller: partyNameController,
                      onChanged: (newValue) {},
                      onSaved: (newValue) {},
                      style:
                          const TextStyle(fontSize: 16.0, color: Colors.black),
                      decoration: InputDecoration(
                        labelText: 'Ex: Rahul Tomar',
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
                        contentPadding:
                            const EdgeInsets.symmetric(horizontal: 10.0),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.only(left: 18, right: 18, top: 15),
                child: Row(
                  children: [
                    Expanded(
                      flex: 5,
                      child: RichText(
                        text: const TextSpan(
                          text: 'Customer Number',
                          style: TextStyle(fontSize: 12, color: Colors.black),
                          children: [
                            TextSpan(
                              text: ' *',
                              style: TextStyle(fontSize: 14, color: Colors.red),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(width: 20),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.only(left: 18, right: 18),
                child: Row(
                  children: [
                    Expanded(
                      flex: 5,
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
                            decoration: InputDecoration(
                              labelText: 'Ex: 124567890',
                              labelStyle: TextStyle(
                                  fontSize: 13.0, color: Colors.grey[400]),
                              floatingLabelBehavior:
                                  FloatingLabelBehavior.never,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8.0),
                                borderSide: const BorderSide(
                                    color: Colors.grey, width: 1.0),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8.0),
                                borderSide: const BorderSide(
                                    color: Colors.grey, width: 1.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              filled: true,
                              fillColor: Colors.grey[100],
                              contentPadding:
                                  const EdgeInsets.symmetric(horizontal: 10.0),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 20),
                  ],
                ),
              ),
              const SizedBox(height: 30),
            ],
          )),
          const SizedBox(height: 5),
          Expanded(
            child: DefaultTabController(
              length: 3,
              child: Column(
                children: [
                  Container(
                    constraints: const BoxConstraints.expand(height: 50.0),
                    child: const TabBar(
                      labelColor: Colors.deepPurple,
                      unselectedLabelColor: Colors.black45,
                      tabs: [
                        Tab(
                            child: Text(
                          "Business Info",
                          style: TextStyle(fontSize: 14),
                        )),
                        Tab(
                          child: Text(
                            "Credit Info",
                            style: TextStyle(fontSize: 14),
                          ),
                        ),
                        Tab(
                          child: Text(
                            "Other Details",
                            style: TextStyle(fontSize: 14),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: TabBarView(
                      children: [
                        const BusinessInfoWidget(),
                        CreditInfoWidget(),
                        OtherDetailsWidget()
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(18),
            width: double.infinity,
            child: ElevatedButton(
              style: ButtonStyle(
                  foregroundColor: MaterialStateProperty.all(Colors.white),
                  backgroundColor:
                      MaterialStateProperty.all(Colors.deepPurple)),
              onPressed: () {},
              child: const Text('Save'),
            ),
          ),
        ],
      ),
    );
  }
}
