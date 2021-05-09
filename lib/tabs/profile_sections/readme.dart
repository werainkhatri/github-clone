import 'package:flutter/material.dart';

import '../../constants.dart';

// TODO use flutter_markdown
class ReadmeSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Row(
            children: [
              Icon(
                Icons.emoji_emotions_outlined,
                color: C.textColor,
                size: 20,
              ),
              SizedBox(width: 10),
              RichText(
                text: TextSpan(
                  text: "werainkhatri/",
                  children: [
                    TextSpan(
                      text: "README",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    TextSpan(
                      text: ".md",
                      style: TextStyle(color: C.unhighlightedTextColor),
                    ),
                  ],
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
        ),
        SizedBox(height: 15),
        Divider(height: 1, thickness: 1, color: C.dividerColor),
        SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Text(
            "Hey World! Viren here.",
            style: TextStyle(
              color: Color(0xFFD8D8D8),
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16.0,
            vertical: 15,
          ),
          child: Text(
            "About Me:",
            style: TextStyle(
              color: Color(0xFFD8D8D8),
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Text(
            C.readme,
            style: TextStyle(color: Color(0xFFD8D8D8), fontSize: 16),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16.0,
            vertical: 15,
          ),
          child: Text(
            "Connect w/ me on my socials",
            style: TextStyle(
              color: Color(0xFFD8D8D8),
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Text(
            "Linkedin | Instagram", // TODO add links here and other places
            style: TextStyle(color: Color(0xFFD8D8D8), fontSize: 16),
          ),
        ),
      ],
    );
  }
}
