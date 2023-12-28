import 'package:flutter/material.dart';

class ItemTimelineWidget extends StatelessWidget {
  const ItemTimelineWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 6,
      itemBuilder: (context, index) {
        // final product = productData[index];
        return Padding(
          padding: const EdgeInsets.only(left: 12, right: 12, top: 5),
          child: GestureDetector(
            child: Card(
              child: Container(
                padding: const EdgeInsets.all(12.0),
                child: const Column(
                  children: [
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '07 Aug 2023 | 1',
                                style: TextStyle(fontSize: 12),
                              ),
                              SizedBox(height: 5),
                              Text(
                                'Invoice',
                                style: TextStyle(fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  '-1.0 BOX',
                                  style: TextStyle(fontWeight: FontWeight.w500),
                                ),
                                SizedBox(height: 5),
                                Text(
                                  '123.0 BOX',
                                  style: TextStyle(fontSize: 12),
                                ),
                              ])
                        ]),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
