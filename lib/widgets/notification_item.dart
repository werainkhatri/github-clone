import 'package:flutter/material.dart';

import '../constants.dart';

class NotificationItem extends StatelessWidget {
  final String user, repo, number, title, time, count, comment;
  final Widget icon;
  final bool isIssue, isOpen;
  const NotificationItem({
    this.user,
    this.repo,
    this.number,
    this.title,
    this.time,
    this.count,
    this.icon,
    this.isIssue = true,
    this.isOpen = true,
    this.comment,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 10),
        Row(
          children: [
            Expanded(
              flex: 2,
              child: Icon(
                isIssue ? Icons.error_outline : Icons.merge_type_outlined,
                color: isOpen ? C.issuePROpenColor : C.issuePRClosedColor,
              ),
            ),
            Expanded(
              flex: 12,
              child: Text(
                "$user / $repo #$number",
                style: TextStyle(
                  color: C.unhighlightedTextColor,
                  fontSize: 16,
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                padding: EdgeInsets.only(right: 16),
                alignment: Alignment.centerRight,
                child: Text(
                  time,
                  style: TextStyle(
                    color: C.unhighlightedTextColor,
                    fontSize: 16,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
            ),
          ],
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(flex: 2, child: Container()),
            Expanded(
              flex: 12,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Text(
                  title,
                  style: TextStyle(
                    fontSize: 16,
                    color: C.titleColor,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                padding: EdgeInsets.only(right: 16),
                alignment: Alignment.topRight,
                child: Container(
                  height: 23,
                  width: 23,
                  decoration: BoxDecoration(
                    color: Color(0xFF2A2C31),
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                    border: Border.all(color: Color(0xFF3F4247)),
                  ),
                  child: Center(
                    child: Text(
                      count,
                      style: TextStyle(color: C.textColor),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        Row(
          children: [
            Expanded(flex: 2, child: Container()),
            Expanded(
              child: Align(alignment: Alignment.centerLeft, child: icon),
            ),
            Expanded(
              flex: 11,
              child: Text(
                comment,
                style: TextStyle(
                  color: C.unhighlightedTextColor,
                  fontSize: 16,
                ),
              ),
            ),
            Expanded(flex: 2, child: Container()),
          ],
        ),
        SizedBox(height: 20),
        Divider(height: 1, thickness: 1, color: C.dividerColor),
      ],
    );
  }
}
