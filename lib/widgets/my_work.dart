import 'package:flutter/material.dart';
import 'package:github_clone/constants.dart';

class MyWorkWidget extends StatelessWidget {
  final String title;
  final IconData icon;
  final Color color;
  final int count;
  const MyWorkWidget({Key key, this.title, this.icon, this.color, this.count})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12),
        child: Stack(
          children: [
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: color,
                    borderRadius: BorderRadius.all(Radius.circular(4)),
                  ),
                  padding: const EdgeInsets.all(6.0),
                  child: Icon(
                    icon,
                    color: Colors.white,
                    size: 21,
                  ),
                ),
                SizedBox(width: 20),
                Text(
                  title,
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ],
            ),
            if (count != null)
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  count.toString(),
                  style: TextStyle(color: C.unhighlightedTextColor),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
