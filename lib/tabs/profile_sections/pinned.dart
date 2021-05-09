import 'dart:math';

import 'package:flutter/material.dart';
import 'package:github_clone/models/programming_languages.dart';
import 'package:github_clone/widgets/my_work.dart';

import '../../constants.dart';

class PinnedSection extends StatelessWidget {
  const PinnedSection({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            children: [
              Transform.rotate(
                angle: -pi / 4,
                child: Icon(
                  Icons.push_pin_outlined,
                  color: C.textColor,
                  size: 25,
                ),
              ),
              SizedBox(width: 10),
              Text(
                "Pinned",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 15),
        SizedBox(
          height: 152,
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: C.pinnedCards.length,
            itemBuilder: (_, index) {
              Widget child = C.pinnedCards[index];
              if (index == C.pinnedCards.length - 1) {
                child = Padding(
                  padding: EdgeInsets.only(right: 16),
                  child: child,
                );
              }
              return child;
            },
            scrollDirection: Axis.horizontal,
          ),
        ),
        SizedBox(height: 15),
        Divider(height: 1, thickness: 1, color: C.dividerColor),
        SizedBox(height: 10),
        ...[
          ["Organizations", Icons.home_work_outlined, Color(0xFFFF8A38), 55],
          ["Repositories", Icons.book_outlined, Color(0xFF41434E), 3],
          ["Starred", Icons.star_border_outlined, Color(0xFFFFCB1A), 22],
        ].map((e) =>
            MyWorkWidget(title: e[0], icon: e[1], color: e[2], count: e[3]))
      ],
    );
  }
}

class PinnedRepositoryCard extends StatelessWidget {
  final String name, description;
  final int stars;
  final ProgrammingLanguage language;
  const PinnedRepositoryCard(
    this.name,
    this.description,
    this.stars,
    this.language,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 284,
      padding: EdgeInsets.all(16),
      margin: EdgeInsets.only(left: 16),
      decoration: BoxDecoration(
        color: Color(0xFF2A2C31),
        borderRadius: BorderRadius.all(Radius.circular(8)),
        border: Border.all(color: Color(0xFF36363B), width: 1),
      ),
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  ClipOval(child: Image.network(C.imageURL, height: 16)),
                  SizedBox(width: 8),
                  Text(
                    "werainkhatri",
                    style: TextStyle(color: C.unhighlightedTextColor),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Text(
                name,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 5),
              Text(
                description,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Row(
              children: [
                Icon(Icons.star_rounded, color: Color(0xFFFFD74D), size: 16),
                SizedBox(width: 5),
                Text(
                  stars.toString(),
                  style: TextStyle(color: C.unhighlightedTextColor),
                ),
                SizedBox(width: 10),
                Container(
                  decoration: BoxDecoration(
                    color: language.color,
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                  ),
                  height: 10,
                  width: 10,
                ),
                SizedBox(width: 10),
                Text(
                  language.name,
                  style: TextStyle(color: C.unhighlightedTextColor),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
