import 'package:flutter/material.dart';
import 'package:test_ui2/components/tab_tile.dart';
import 'package:google_fonts/google_fonts.dart';

class SideBar extends StatelessWidget {
  const SideBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Column(
        children: [
          SizedBox(
            height: 60,
            child: Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.network(
                      'https://cdn.discordapp.com/attachments/1017531658028728363/1213118074664787988/Group_111.png?ex=65f44f3f&is=65e1da3f&hm=b0284bdda6116c7bbd6dfb7f34fbf5dedc788b55ec88e3fff66c589564bd8ef4&',
                      width: 35,
                      height: 35,
                    ),
                    const SizedBox(width: 10),
                    Text(
                      'LODAYA',
                      style: GoogleFonts.bebasNeue(
                        textStyle:
                            const TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            height: 1,
            width: double.infinity,
            color: const Color.fromARGB(80, 63, 63, 63),
          ),
          const Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: 10),
                  TabTile(
                    name: 'Dashboard',
                    icon: Icons.library_books_outlined,
                    color: Color.fromARGB(133, 67, 67, 67),
                  ),
                  TabTile(
                    name: 'Sales',
                    icon: Icons.storefront_sharp,
                  ),
                  TabTile(
                    name: 'Products',
                    icon: Icons.shopping_bag_outlined,
                  ),
                  TabTile(
                    name: 'Show All',
                    icon: Icons.check_box_outline_blank,
                    isSubTile: true,
                  ),
                  TabTile(
                    name: 'Shoes',
                    icon: Icons.check_box,
                    isSubTile: true,
                  ),
                  TabTile(
                    name: 'T-Shirt',
                    icon: Icons.check_box_outline_blank,
                    isSubTile: true,
                  ),
                  TabTile(
                    name: 'Jacket',
                    icon: Icons.check_box_outline_blank,
                    isSubTile: true,
                  ),
                  TabTile(
                    name: 'Pants',
                    icon: Icons.check_box_outline_blank,
                    isSubTile: true,
                  ),
                  TabTile(
                    name: 'Report',
                    icon: Icons.trending_up_rounded,
                  ),
                  TabTile(
                    name: 'Billing',
                    icon: Icons.wallet_rounded,
                  ),
                  TabTile(
                    name: 'Account',
                    icon: Icons.supervisor_account_sharp,
                  ),
                  TabTile(
                    name: 'Settings',
                    icon: Icons.settings_outlined,
                  ),
                ],
              ),
            ),
          ),
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
                        'https://cdn.discordapp.com/attachments/1017531658028728363/1213104789706248243/IMG_0092.png?ex=65f442e0&is=65e1cde0&hm=f7a55fde0d76c548281b59b58055d455500dffa03b89c8a9702d030416ed5d0d&',
                        width: 35,
                        height: 35,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Ziyad F.',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'ziyad@example.com',
                          style: TextStyle(
                            color: Color.fromARGB(133, 255, 255, 255),
                            fontWeight: FontWeight.bold,
                            fontSize: 10,
                          ),
                        ),
                      ],
                    ),
                  ),
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
