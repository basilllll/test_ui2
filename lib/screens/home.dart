import 'package:flutter/material.dart';
import 'package:test_ui2/widgets/chart.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width -
          MediaQuery.of(context).size.width / 7,
      color: const Color.fromARGB(255, 255, 255, 255),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                children: [
                  const Text(
                    "Dashboard",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                  const Spacer(),
                  const Stack(
                    children: [
                      Icon(Icons.mail_outline),
                      Positioned(
                        left: 16,
                        child: Icon(
                          Icons.brightness_1,
                          color: Colors.red,
                          size: 9,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    height: 20,
                    width: 1,
                    color: const Color.fromARGB(153, 158, 158, 158),
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                  ),
                  const Stack(
                    children: [
                      Icon(Icons.notifications_none_rounded),
                      Positioned(
                        left: 13,
                        child: Icon(
                          Icons.brightness_1,
                          color: Colors.red,
                          size: 9,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          const Divider(),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    const Row(
                      children: [
                        Box(
                          title: "BOUNCE RATE",
                          value: "45.80%",
                          color: Color.fromARGB(32, 0, 157, 79),
                          valueColor: Color.fromARGB(255, 0, 160, 80),
                          compareValue: "+12.08",
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Box(
                            title: "TOTAL EARNING",
                            value: "\$18,950",
                            color: Color.fromARGB(31, 255, 54, 54),
                            valueColor: Color.fromARGB(255, 255, 77, 77),
                            compareValue: "-15.08"),
                        SizedBox(
                          width: 15,
                        ),
                        Box(
                            title: "TOTAL ORDERS",
                            value: "2,460",
                            color: Color.fromARGB(32, 0, 157, 79),
                            valueColor: Color.fromARGB(255, 0, 160, 80),
                            compareValue: "+12.08"),
                      ],
                    ),
                    Row(
                      children: [
                        const Text(
                          "title",
                          style: TextStyle(fontSize: 20),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Opacity(
                          opacity: 0.5,
                          child: Image.network(
                            "https://cdn.discordapp.com/attachments/1017531658028728363/1213234834416336976/Group_3.png?ex=65f4bbfd&is=65e246fd&hm=95762282afec8a9659aa9c29541ffab2c89c3e713c654f7eb9cbb56488a56b55&",
                            scale: 3,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      height: 2,
                      width: double.infinity,
                      color: Colors.grey,
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              border: Border.all(
                                color: Colors.grey,
                                width: 1,
                              ),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 8.0),
                              child: Text(
                                "24 Hours",
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              border: Border.all(
                                color: Colors.grey,
                                width: 1,
                              ),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 8.0),
                              child: Text(
                                "7 Days",
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              border: Border.all(
                                color: Colors.grey,
                                width: 1,
                              ),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 8.0),
                              child: Text(
                                "30 Days",
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                border: Border.all(
                                  color: Colors.black,
                                  width: 1,
                                ),
                                color: Colors.black),
                            child: const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 8.0),
                              child: Text(
                                "12 Months",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                        const Spacer(),
                        Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              border: Border.all(
                                color: Colors.grey,
                                width: 1,
                              ),
                            ),
                            child: const Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(
                                      left: 10, top: 5, bottom: 5),
                                  child: Icon(
                                    Icons.date_range,
                                    size: 20,
                                  ),
                                ),
                                Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 8.0),
                                  child: Text(
                                    "Select dates",
                                    style: TextStyle(color: Colors.black),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 230),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all(
                              color: const Color.fromARGB(200, 255, 255, 255),
                              width: 5,
                            ),
                            color: Colors.black),
                        child: const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 8.0),
                          child: Text(
                            "12,570",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    const Stack(
                      children: [
                        Chart(),
                      ],
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      child: Row(
                        children: [
                          Expanded(
                              child: Text("Jan",
                                  style: TextStyle(color: Colors.grey))),
                          Expanded(
                              child: Text("Feb",
                                  style: TextStyle(color: Colors.grey))),
                          Expanded(
                              child: Text("Mar",
                                  style: TextStyle(color: Colors.grey))),
                          Expanded(
                              child: Text("Apr",
                                  style: TextStyle(color: Colors.grey))),
                          Expanded(
                              child: Text("May",
                                  style: TextStyle(color: Colors.grey))),
                          Expanded(
                              child: Text("Jun",
                                  style: TextStyle(color: Colors.grey))),
                          Expanded(
                              child: Text("Jul",
                                  style: TextStyle(color: Colors.grey))),
                          Expanded(
                              child: Text("Aug",
                                  style: TextStyle(color: Colors.grey))),
                          Expanded(
                              child: Text("Sep",
                                  style: TextStyle(color: Colors.grey))),
                          Expanded(
                              child: Text("Oct",
                                  style: TextStyle(color: Colors.grey))),
                          Text("Nov", style: TextStyle(color: Colors.grey)),
                        ],
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
                          children: [
                            Text("No"),
                            SizedBox(width: 60),
                            Text("Image"),
                            SizedBox(width: 60),
                            Row(
                              children: [
                                Text("Product Name"),
                                Icon(Icons.swap_vert),
                              ],
                            ),
                            SizedBox(width: 220),
                            Row(
                              children: [
                                Text("Price"),
                                Icon(Icons.swap_vert),
                              ],
                            ),
                            SizedBox(width: 60),
                            Text("Status"),
                            SizedBox(width: 220),
                            Row(
                              children: [
                                Text("Sell"),
                                Icon(Icons.swap_vert),
                              ],
                            ),
                            SizedBox(width: 60),
                            Row(
                              children: [
                                Text("Views"),
                                Icon(Icons.swap_vert),
                              ],
                            ),
                            SizedBox(width: 60),
                            Row(
                              children: [
                                Text("Earnings"),
                                Icon(Icons.swap_vert),
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
      ),
    );
  }
}

class Box extends StatelessWidget {
  const Box(
      {required this.title,
      required this.color,
      required this.value,
      required this.valueColor,
      required this.compareValue,
      super.key});

  final String title;
  final String value;
  final Color color;
  final Color valueColor;
  final String compareValue;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  title,
                  style: const TextStyle(
                      fontSize: 15, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  width: 10,
                ),
                Opacity(
                  opacity: 0.5,
                  child: Image.network(
                    "https://cdn.discordapp.com/attachments/1017531658028728363/1213234834416336976/Group_3.png?ex=65f4bbfd&is=65e246fd&hm=95762282afec8a9659aa9c29541ffab2c89c3e713c654f7eb9cbb56488a56b55&",
                    scale: 3,
                  ),
                ),
              ],
            ),
            Container(
              height: 2,
              width: double.infinity,
              color: Colors.grey,
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Text(
                  value,
                  style: const TextStyle(fontSize: 30),
                ),
                const Spacer(),
                const Icon(
                  Icons.arrow_outward_sharp,
                  size: 30,
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  height: 25,
                  decoration: BoxDecoration(
                    color: color,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: Icon(
                          Icons.arrow_outward_sharp,
                          size: 20,
                          color: valueColor,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 5),
                        child: Text(
                          compareValue,
                          style: TextStyle(color: valueColor),
                        ),
                      ),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 8),
                  child: Text(
                    "than last week",
                    style: TextStyle(color: Color.fromARGB(158, 0, 0, 0)),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class ProductsList extends StatelessWidget {
  const ProductsList({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        ProductListItem(
          photo:
              "https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/99486859-0ff3-46b4-949b-2d16af2ad421/custom-nike-dunk-high-by-you-shoes.png",
          number: "1",
          productName: 'Velvet Doff Gray Chair',
          price: "\$110.00",
          stockStatus: 'Available',
          stockStatusBackgroundColor: Color.fromARGB(32, 0, 157, 79),
          stockStatusColor: Color.fromARGB(255, 0, 160, 80),
          sells: "180",
          views: "12,306",
          earnings: "\$5,954",
        ),
        Divider(),
        ProductListItem(
          photo:
              "https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/99486859-0ff3-46b4-949b-2d16af2ad421/custom-nike-dunk-high-by-you-shoes.png",
          number: "2",
          productName: 'Nike Pegasus Trail 4 By You',
          price: "\$185.00",
          stockStatus: 'Out of stock',
          stockStatusBackgroundColor: Color.fromARGB(31, 255, 54, 54),
          stockStatusColor: Color.fromARGB(255, 255, 77, 77),
          sells: "102",
          views: "14,120",
          earnings: "\$4,973",
        ),
        Divider(),
        ProductListItem(
          photo:
              "https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/99486859-0ff3-46b4-949b-2d16af2ad421/custom-nike-dunk-high-by-you-shoes.png",
          number: "3",
          productName: 'Nike Pegasus FlyEase By You',
          price: "\$170.00",
          stockStatus: 'Available',
          stockStatusBackgroundColor: Color.fromARGB(32, 0, 157, 79),
          stockStatusColor: Color.fromARGB(255, 0, 160, 80),
          sells: "80",
          views: "10,285",
          earnings: "\$3,840",
        ),
      ],
    );
  }
}

class ProductListItem extends StatelessWidget {
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

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
          child: Row(
            children: [
              SizedBox(
                width: 70,
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
              const SizedBox(
                width: 50,
              ),
              SizedBox(
                width: 335,
                child: Text(
                  productName,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                width: 120,
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
              const SizedBox(width: 160),
              SizedBox(
                width: 110,
                child: Text(
                  sells,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                width: 120,
                child: Text(
                  views,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Text(
                earnings,
                style: const TextStyle(fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
      ],
    );
  }
}
