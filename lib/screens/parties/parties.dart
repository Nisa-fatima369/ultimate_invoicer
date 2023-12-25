import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ultimate_invoicer/screens/parties/parties_create_view.dart';
import 'package:ultimate_invoicer/screens/parties/parties_detail_view.dart';

class Parties extends StatefulWidget {
  const Parties({Key? key}) : super(key: key);

  @override
  State<Parties> createState() => _PartiesState();
}

class _PartiesState extends State<Parties> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Parties',
        ),
        actions: [
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.filter_list_rounded)),
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
            return Card(
              child: ListTile(
                title: Text(
                  'name',
                  style: const TextStyle(fontSize: 15),
                ),
                subtitle: Text(
                  'type',
                  style: const TextStyle(fontSize: 14, color: Colors.black54),
                ),
                trailing: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Expanded(
                      flex: 4,
                      child: Container(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Text(
                          'balance',
                          style: const TextStyle(fontSize: 12),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 6,
                      child: TextButton.icon(
                        style: ButtonStyle(
                          padding: MaterialStateProperty.all(
                              const EdgeInsets.symmetric(horizontal: 0)),
                        ),
                        icon: const FaIcon(
                          FontAwesomeIcons.whatsapp,
                          size: 20,
                        ),
                        onPressed: () {
                          // Handle share on WhatsApp link press
                        },
                        label: const Text(
                          'Send Reminder',
                          style: TextStyle(fontSize: 12),
                        ),
                      ),
                    ),
                  ],
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) {
                      return const PartyDetail();
                    }),
                  );
                },
              ),
            );
          }),
      floatingActionButton: FloatingActionButton(
        
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) {
              return const PartyCreate();
            }),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
