import 'package:flutter/material.dart';

class DetailsWidget extends StatelessWidget {
  const DetailsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(height: 5),
          Card(
            color: Colors.white,
            child: Container(
              height: 100,
              padding: const EdgeInsets.only(top: 8.0, left: 12.0),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Party Info',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(height: 15),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Contact Number',
                        style: TextStyle(fontSize: 13, color: Colors.black45),
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.call,
                            size: 18,
                            color: Colors.deepPurple,
                          ),
                          SizedBox(width: 10),
                          Text('1134567890'),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Card(
            color: Colors.white,
            child: Container(
              padding: const EdgeInsets.only(top: 8.0, left: 12.0),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'GST & PAN',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(height: 15),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        flex: 5,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'GST Registration Type',
                              style: TextStyle(
                                  fontSize: 13, color: Colors.black45),
                            ),
                            Text('--'),
                            SizedBox(height: 10),
                            Text(
                              'PAN Number',
                              style: TextStyle(
                                  fontSize: 13, color: Colors.black45),
                            ),
                            Text('--'),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 5,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // Icon(Icons.call),
                            Text(
                              'GSTIN',
                              style: TextStyle(
                                  fontSize: 13, color: Colors.black45),
                            ),
                            Text('--'),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Card(
            color: Colors.white,
            child: Container(
              padding: const EdgeInsets.only(top: 8.0, left: 12.0),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Address',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(height: 15),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        flex: 5,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Billing Address',
                              style: TextStyle(
                                  fontSize: 13, color: Colors.black45),
                            ),
                            Text('--'),
                            SizedBox(height: 10)
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 5,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // Icon(Icons.call),
                            Text(
                              'Shipping Address',
                              style: TextStyle(
                                  fontSize: 13, color: Colors.black45),
                            ),
                            Text('--'),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Card(
            color: Colors.white,
            child: Container(
              padding: const EdgeInsets.only(top: 8.0, left: 12.0),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Balance Details',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(height: 15),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        flex: 5,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Credit Period(Days)',
                              style: TextStyle(
                                  fontSize: 13, color: Colors.black45),
                            ),
                            Text('0'),
                            SizedBox(height: 10)
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 5,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // Icon(Icons.call),
                            Text(
                              'Credit Limit',
                              style: TextStyle(
                                  fontSize: 13, color: Colors.black45),
                            ),
                            Text('0.0'),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
