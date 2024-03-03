import 'package:flutter/material.dart';

class TabTile extends StatelessWidget {
  final String name;
  final IconData icon;
  final Color? color;
  final bool isSubTile;

  const TabTile({
    required this.name,
    required this.icon,
    this.isSubTile = false,
    this.color,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.only(bottom: 10, left: isSubTile ? 50 : 10, right: 10),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(7),
          color: color,
        ),
        padding: const EdgeInsets.all(5),
        child: InkWell(
          borderRadius: BorderRadius.circular(7),
          focusColor: Colors.transparent,
          hoverColor: Colors.transparent,
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          onTap: () {},
          child: Row(
            children: [
              if (!isSubTile)
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Icon(
                    icon,
                    color: const Color.fromARGB(214, 255, 255, 255),
                    size: 18,
                  ),
                ),
              Expanded(
                child: Text(
                  name,
                  style: const TextStyle(
                      color: Color.fromARGB(214, 255, 255, 255), fontSize: 15),
                ),
              ),
              if (isSubTile)
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Icon(
                    icon,
                    color: const Color.fromARGB(214, 255, 255, 255),
                    size: 18,
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
