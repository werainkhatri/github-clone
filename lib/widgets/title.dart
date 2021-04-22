import 'package:flutter/material.dart';
import 'package:github_clone/constants.dart';

class TitleWidget extends StatelessWidget {
  final String title;
  const TitleWidget({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        color: C.titleColor,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}

class SubtitleWidget extends StatelessWidget {
  final String text;

  const SubtitleWidget(this.text, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 8, 0, 8),
      child: Text(
        text,
        style: TextStyle(
          fontSize: 16,
          color: C.titleColor,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
