import 'package:flutter/material.dart';
import 'package:test_ui2/widgets/categories.dart';
import 'package:google_fonts/google_fonts.dart';

class SideBar extends StatelessWidget {
  const SideBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      width: MediaQuery.of(context).size.width / 7,
      child: Column(
        children: [
          const SizedBox(
            height: 15,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Image.network(
                  "https://cdn.discordapp.com/attachments/1017531658028728363/1213118074664787988/Group_111.png?ex=65f44f3f&is=65e1da3f&hm=b0284bdda6116c7bbd6dfb7f34fbf5dedc788b55ec88e3fff66c589564bd8ef4&",
                  width: 35,
                  height: 35,
                ),
              ),
              Text(
                "LODAYA",
                style: GoogleFonts.bebasNeue(
                  textStyle: const TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ],
          ),
          const Divider(color: Color.fromARGB(80, 255, 255, 255)),
          const Categories(
            name: "Dashboard",
            icon: Icons.library_books_outlined,
            color: Color.fromARGB(133, 73, 73, 73),
          ),
          const Categories(
            name: "Sales",
            icon: Icons.storefront_sharp,
            color: Color.fromARGB(0, 255, 255, 255),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4),
              ),
              color: const Color.fromARGB(0, 255, 255, 255),
              child: InkWell(
                borderRadius: BorderRadius.circular(4),
                onTap: () {},
                child: Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8),
                      child: Icon(
                        Icons.shopping_bag_outlined,
                        color: Color.fromARGB(214, 255, 255, 255),
                        size: 20,
                      ),
                    ),
                    const Text(
                      "Products",
                      style: TextStyle(
                          color: Color.fromARGB(214, 255, 255, 255),
                          fontSize: 15),
                    ),
                    const Spacer(),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        color: const Color.fromARGB(0, 0, 0, 0),
                        child: InkWell(
                          borderRadius: BorderRadius.circular(30),
                          onTap: () {},
                          child: const Icon(
                            Icons.keyboard_arrow_down_rounded,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const Items(
            name: "Show All",
            icon: Icons.check_box_outline_blank,
          ),
          const Items(
            name: "Shoes",
            icon: Icons.check_box,
          ),
          const Items(
            name: "T-Shirt",
            icon: Icons.check_box_outline_blank,
          ),
          const Items(
            name: "Jacket",
            icon: Icons.check_box_outline_blank,
          ),
          const Items(
            name: "Pants",
            icon: Icons.check_box_outline_blank,
          ),
          const Categories(
            name: "Report",
            icon: Icons.trending_up_rounded,
            color: Color.fromARGB(0, 255, 255, 255),
          ),
          const Categories(
            name: "Billing",
            icon: Icons.wallet_rounded,
            color: Color.fromARGB(0, 255, 255, 255),
          ),
          const Categories(
            name: "Account",
            icon: Icons.supervisor_account_sharp,
            color: Color.fromARGB(0, 255, 255, 255),
          ),
          const Categories(
            name: "Settings",
            icon: Icons.settings_outlined,
            color: Color.fromARGB(0, 255, 255, 255),
          ),
          const Spacer(),
          Container(
            color: const Color.fromARGB(255, 34, 34, 34),
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: Row(
                children: [
                  Container(
                    padding: const EdgeInsets.only(right: 15),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: Image.network(
                        "https://cdn.discordapp.com/attachments/1017531658028728363/1213104789706248243/IMG_0092.png?ex=65f442e0&is=65e1cde0&hm=f7a55fde0d76c548281b59b58055d455500dffa03b89c8a9702d030416ed5d0d&",
                        width: 35,
                        height: 35,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Zizo",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'wowoow@wow.wow',
                        style: TextStyle(
                            color: Color.fromARGB(133, 255, 255, 255),
                            fontWeight: FontWeight.bold,
                            fontSize: 10),
                      ),
                    ],
                  ),
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)),
                      color: Colors.grey[900],
                      child: InkWell(
                        borderRadius: BorderRadius.circular(30),
                        onTap: () {},
                        child: const Icon(
                          Icons.keyboard_arrow_down_rounded,
                          size: 30,
                          color: Color.fromARGB(129, 255, 255, 255),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
