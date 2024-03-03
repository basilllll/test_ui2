import 'package:flutter/material.dart';

class HomeInfoTile extends StatelessWidget {
  final String title;
  final String value;
  final Color color;
  final String compareValue;

  const HomeInfoTile({
    super.key,
    required this.title,
    required this.value,
    required this.color,
    required this.compareValue,
  });

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
                const Icon(Icons.info_outline_rounded,
                    size: 20, color: Colors.grey),
              ],
            ),
            const SizedBox(height: 10),
            Container(
              height: 2,
              width: double.infinity,
              color: Colors.grey.shade400,
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                Expanded(
                  child: Text(
                    value,
                    style: const TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                const Icon(
                  Icons.arrow_outward_rounded,
                  size: 30,
                ),
              ],
            ),
            const SizedBox(height: 5),
            Row(
              children: [
                Container(
                  height: 25,
                  decoration: BoxDecoration(
                    color: color.withOpacity(0.15),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  padding: const EdgeInsets.only(left: 5, right: 8),
                  child: Row(
                    children: [
                      Icon(
                        Icons.arrow_outward_rounded,
                        size: 15,
                        color: color,
                      ),
                      const SizedBox(width: 5),
                      Text(
                        compareValue,
                        style: TextStyle(color: color, fontSize: 14),
                      ),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 8),
                  child: Text(
                    'than last week',
                    style: TextStyle(
                      color: Color.fromARGB(158, 138, 132, 132),
                      fontWeight: FontWeight.w400,
                    ),
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
