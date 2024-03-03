import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
  const Categories(
      {required this.color, required this.name, required this.icon, super.key});

  final String name;
  final IconData icon;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4),
        ),
        color: color,
        child: InkWell(
          borderRadius: BorderRadius.circular(4),
          onTap: () {},
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8),
                child: Icon(
                  icon,
                  color: const Color.fromARGB(214, 255, 255, 255),
                  size: 20,
                ),
              ),
              Text(
                name,
                style: const TextStyle(
                    color: Color.fromARGB(214, 255, 255, 255), fontSize: 15),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Items extends StatelessWidget {
  const Items({required this.name, required this.icon, super.key});

  final String name;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4),
          ),
          color: const Color.fromARGB(0, 0, 0, 0),
          child: InkWell(
              borderRadius: BorderRadius.circular(4),
              onTap: () {},
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: Text(
                        name,
                        style: const TextStyle(
                            color: Color.fromARGB(214, 255, 255, 255),
                            fontSize: 15),
                      ),
                    ),
                    const Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(right: 8),
                      child: Icon(
                        icon,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              )),
        ),
      ),
    );
  }
}
