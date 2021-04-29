import 'package:flutter/material.dart';

import 'widgets/notification_item.dart';

class C {
  static Color background = Color(0xFF17181C);
  static Color accent = Color(0xFF0D6EDB);
  static Color bgButton = Color(0xFF1F1F24);

  static Color titleColor = Color(0xFFFBFBFC);
  static Color textColor = Color(0xFFBFC1C9);
  static Color unhighlightedTextColor = Color(0xFF9194A1);
  static Color unhighlightedIconColor = Color(0xFF6C6F7E);

  static Color dividerColor = Color(0xFF323337);

  static Color issuePROpenColor = Color(0xFF32B24F);
  static Color issuePRClosedColor = Color(0xFF7548C7);

  static const String imageURL =
      "https://avatars.githubusercontent.com/u/44755140?v=4";
  static const String workingEmoteURL =
      "https://github.githubassets.com/images/icons/emoji/unicode/1f468-1f4bb.png";
  static const String bio =
      "3rd Year CSE Undergraduate @ NIT Raipur | Technical Manager @ECellNitrr | Flutter and Android Developer";
  static const String readme =
      "I'm a Mobile Application Developer, doing my Bachelor's in Computer Science and Engineering from NIT Raipur. Here to contribute to open source. I like Math and Minecraft";

  static List<Widget> notifications = [
    NotificationItem(
      user: "werainkhatri",
      repo: "github-clone",
      number: "69",
      title: "Create a github clone",
      time: "5m",
      count: "5",
      icon: Icon(
        Icons.account_circle_outlined,
        color: Colors.white,
        size: 18,
      ),
      isIssue: false,
      comment: "You commented",
    ),
    NotificationItem(
      user: "werainkhatri",
      repo: "whatsapp-clone",
      number: "420",
      title: "Create a github clone",
      time: "5m",
      count: "5",
      icon: Icon(
        Icons.account_circle_outlined,
        color: Colors.white,
        size: 18,
      ),
      isIssue: false,
      comment: "You commented",
    ),
    NotificationItem(
      user: "flutter",
      repo: "flutter",
      number: "80808",
      title: "Fix Hot reload icon in flutter/README.md",
      time: "6h",
      count: "2",
      icon: Icon(
        Icons.account_circle_rounded,
        color: Colors.white,
        size: 18,
      ),
      isIssue: true,
      isOpen: false,
      comment: "google-bot commented",
    ),
    NotificationItem(
      user: "werainkhatri",
      repo: "flutter",
      number: "80808",
      title: "Fix Hot reload icon in flutter/README.md",
      time: "1d",
      count: "2",
      icon: Icon(
        Icons.account_circle_rounded,
        color: Colors.white,
        size: 18,
      ),
      isIssue: true,
      comment: "moderator commented",
    ),
    NotificationItem(
      user: "user",
      repo: "repository",
      number: "123",
      title: "Issue details",
      time: "6d",
      count: "10",
      icon: Icon(
        Icons.account_box_outlined,
        color: Colors.white,
        size: 18,
      ),
      isIssue: true,
      comment: "moderator commented",
    ),
    NotificationItem(
      user: "user",
      repo: "repository",
      number: "123",
      title: "Issue details",
      time: "6d",
      count: "10",
      icon: Icon(
        Icons.account_box_outlined,
        color: Colors.white,
        size: 18,
      ),
      isIssue: false,
      comment: "moderator commented",
    ),
    NotificationItem(
      user: "user",
      repo: "repository",
      number: "123",
      title: "Issue details",
      time: "6d",
      count: "10",
      icon: Icon(
        Icons.account_circle_outlined,
        color: Colors.white,
        size: 18,
      ),
      isIssue: true,
      isOpen: false,
      comment: "You commented",
    ),
    NotificationItem(
      user: "user",
      repo: "repository",
      number: "123",
      title: "Issue details",
      time: "6d",
      count: "10",
      icon: Icon(
        Icons.account_box_outlined,
        color: Colors.white,
        size: 18,
      ),
      isIssue: false,
      isOpen: false,
      comment: "moderator commented",
    ),
  ];
}
