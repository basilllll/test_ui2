import 'package:flutter/material.dart';
import 'package:test_ui2/components/chart.dart';
import 'package:test_ui2/components/products.dart';
import 'package:test_ui2/screens/components/info_tile.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 60,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: Row(
              children: [
                const Text(
                  'Dashboard',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 23,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const Spacer(),
                const Stack(
                  children: [
                    Icon(Icons.mail_outline),
                    Positioned(
                      left: 16,
                      child: Icon(
                        Icons.brightness_1,
                        color: Colors.redAccent,
                        size: 8,
                      ),
                    ),
                  ],
                ),
                const SizedBox(width: 12),
                Container(
                  height: 20,
                  width: 1,
                  color: const Color.fromARGB(153, 158, 158, 158),
                ),
                const SizedBox(width: 12),
                const Stack(
                  children: [
                    Icon(Icons.notifications_none_rounded),
                    Positioned(
                      left: 13,
                      child: Icon(
                        Icons.brightness_1,
                        color: Colors.redAccent,
                        size: 8,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        Container(
          height: 1,
          width: double.infinity,
          color: const Color.fromARGB(80, 63, 63, 63),
        ),
        Expanded(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                children: [
                  const Row(
                    children: [
                      HomeInfoTile(
                        title: 'BOUNCE RATE',
                        value: '45.80%',
                        color: Color.fromARGB(255, 0, 160, 80),
                        compareValue: '+12.08',
                      ),
                      SizedBox(width: 15),
                      HomeInfoTile(
                        title: 'TOTAL EARNING',
                        value: '\$18,950',
                        color: Color.fromARGB(255, 255, 77, 77),
                        compareValue: '-15.08',
                      ),
                      SizedBox(width: 15),
                      HomeInfoTile(
                        title: 'TOTAL ORDERS',
                        value: '2,460',
                        color: Color.fromARGB(255, 0, 160, 80),
                        compareValue: '+12.08',
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  const Row(
                    children: [
                      Text(
                        'TOTAL ORDER',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(Icons.info_outline_rounded,
                          size: 20, color: Colors.grey),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Container(
                    height: 1.5,
                    width: double.infinity,
                    color: Colors.grey.shade400,
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      Expanded(
                        child: Row(
                            children: [
                          {
                            'title': '24 Hours',
                            'selected': false,
                          },
                          {
                            'title': '7 Days',
                            'selected': false,
                          },
                          {
                            'title': '30 Days',
                            'selected': false,
                          },
                          {
                            'title': '12 Months',
                            'selected': true,
                          },
                        ].map((e) {
                          return Padding(
                            padding: const EdgeInsets.only(right: 8),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                border: e['selected'] as bool
                                    ? null
                                    : Border.all(
                                        color: Colors.grey,
                                        width: 1,
                                      ),
                                color: e['selected'] as bool
                                    ? Colors.black
                                    : Colors.white,
                              ),
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 3),
                              child: Text(
                                e['title'] as String,
                                style: TextStyle(
                                  color: e['selected'] as bool
                                      ? Colors.white
                                      : Colors.black,
                                ),
                              ),
                            ),
                          );
                        }).toList()),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 8),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all(
                              color: Colors.grey,
                              width: 1,
                            ),
                          ),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 5),
                          child: Row(
                            children: [
                              Icon(
                                Icons.date_range_outlined,
                                size: 18,
                                color: Colors.grey.shade600,
                              ),
                              const SizedBox(width: 8),
                              Text(
                                'Select dates',
                                style: TextStyle(
                                  color: Colors.grey.shade800,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  const Chart(),
                  const SizedBox(height: 5),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Row(
                      children: [
                        'Jan',
                        'Feb',
                        'Mar',
                        'Apr',
                        'May',
                        'Jun',
                        'Jul',
                        'Aug',
                        'Sep',
                        'Oct',
                        'Nov',
                      ].map(
                        (e) {
                          return Expanded(
                            child: Text(
                              e,
                              style: TextStyle(color: Colors.blueGrey.shade900),
                            ),
                          );
                        },
                      ).toList(),
                    ),
                  ),
                  const SizedBox(height: 30),
                  Container(
                    height: 35,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(3),
                        color: const Color.fromARGB(255, 235, 235, 235)),
                    child: const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('No'),
                          Text('Image'),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text('Product Name'),
                              SizedBox(width: 2),
                              Icon(
                                Icons.swap_vert_rounded,
                                size: 18,
                                color: Colors.grey,
                              ),
                            ],
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text('Price'),
                              SizedBox(width: 2),
                              Icon(
                                Icons.swap_vert_rounded,
                                size: 18,
                                color: Colors.grey,
                              ),
                            ],
                          ),
                          Text('Status'),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text('Sell'),
                              SizedBox(width: 2),
                              Icon(
                                Icons.swap_vert_rounded,
                                size: 18,
                                color: Colors.grey,
                              ),
                            ],
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text('Views'),
                              SizedBox(width: 2),
                              Icon(
                                Icons.swap_vert_rounded,
                                size: 18,
                                color: Colors.grey,
                              ),
                            ],
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text('Earnings'),
                              SizedBox(width: 2),
                              Icon(
                                Icons.swap_vert_rounded,
                                size: 18,
                                color: Colors.grey,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 5),
                  const ProductsList(),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
