import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ProductsList extends StatelessWidget {
  const ProductsList({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        ProductListItem(
          photo:
              'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/99486859-0ff3-46b4-949b-2d16af2ad421/custom-nike-dunk-high-by-you-shoes.png',
          number: '1',
          productName: 'Velvet Doff Gray Chair',
          price: '\$110.00',
          stockStatus: 'Available',
          stockStatusBackgroundColor: Color.fromARGB(32, 0, 157, 79),
          stockStatusColor: Color.fromARGB(255, 0, 160, 80),
          sells: '180',
          views: '12,306',
          earnings: '\$5,954',
        ),
        Divider(),
        ProductListItem(
          photo:
              'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/99486859-0ff3-46b4-949b-2d16af2ad421/custom-nike-dunk-high-by-you-shoes.png',
          number: '2',
          productName: 'Nike Pegasus Trail 4 By You',
          price: '\$185.00',
          stockStatus: 'Out of stock',
          stockStatusBackgroundColor: Color.fromARGB(31, 255, 54, 54),
          stockStatusColor: Color.fromARGB(255, 255, 77, 77),
          sells: '102',
          views: '14,120',
          earnings: '\$4,973',
        ),
        Divider(),
        ProductListItem(
          photo:
              'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/99486859-0ff3-46b4-949b-2d16af2ad421/custom-nike-dunk-high-by-you-shoes.png',
          number: '3',
          productName: 'Nike Pegasus FlyEase By You',
          price: '\$170.00',
          stockStatus: 'Available',
          stockStatusBackgroundColor: Color.fromARGB(32, 0, 157, 79),
          stockStatusColor: Color.fromARGB(255, 0, 160, 80),
          sells: '80',
          views: '10,285',
          earnings: '\$3,840',
        ),
      ],
    );
  }
}

class ProductListItem extends StatelessWidget {
  final String number;
  final String photo;
  final String productName;
  final String price;
  final String stockStatus;
  final Color stockStatusColor;
  final Color stockStatusBackgroundColor;
  final String sells;
  final String views;
  final String earnings;

  const ProductListItem({
    super.key,
    required this.number,
    required this.photo,
    required this.productName,
    required this.price,
    required this.stockStatus,
    required this.stockStatusColor,
    required this.stockStatusBackgroundColor,
    required this.sells,
    required this.views,
    required this.earnings,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 60,
                child: Text(
                  number,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: Image.network(
                  photo,
                  width: 60,
                  height: 60,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(width: 5),
              SizedBox(
                width: 200,
                child: Text(
                  productName,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                width: 100,
                child: Text(
                  price,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                width: 100,
                decoration: BoxDecoration(
                  color: stockStatusBackgroundColor,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        stockStatus,
                        style: TextStyle(
                          color: stockStatusColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: 50,
                child: Text(
                  sells,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                width: 100,
                child: Text(
                  views,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                width: 50,
                child: Text(
                  earnings,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
