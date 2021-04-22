import 'package:flutter/material.dart';
import 'package:github_clone/widgets/title.dart';

import 'constants.dart';
import 'widgets/my_work.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          AppBar(
            elevation: 0,
            backgroundColor: C.background,
            title: TitleWidget(title: "Home"),
            actions: [
              IconButton(
                icon: Icon(
                  Icons.search,
                  color: Theme.of(context).accentColor,
                ),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(
                  Icons.add_circle_outline,
                  color: Theme.of(context).accentColor,
                ),
                onPressed: () {},
              ),
            ],
          ),
          Expanded(
            child: ListView(
              children: [
                SizedBox(height: 10),
                SubtitleWidget("My Work"), // !
                SizedBox(height: 10),
                ...[
                  ["Issues", Icons.error_outline, Color(0x00FF40D663)],
                  ["Pull Requests", Icons.merge_type, Color(0xFF2E8FFF)],
                  ["Discussiong", Icons.message_outlined, Color(0xFF7548C7)],
                  ["Repositories", Icons.book_outlined, Color(0xFF41434E)],
                  ["Organizations", Icons.home_work_outlined, Color(0xFFFF8A38)]
                ].map(
                    (e) => MyWorkWidget(title: e[0], icon: e[1], color: e[2])),
                SizedBox(height: 10),
                Divider(height: 1, thickness: 1, color: C.dividerColor),
                SizedBox(height: 10),
                SubtitleWidget("Favorites"), // !
                SizedBox(height: 30),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16.0,
                    vertical: 8.0,
                  ),
                  child: Text(
                    'Add favorite repositories for quick access at any time,'
                    ' without having to search',
                    style: TextStyle(color: C.textColor, fontSize: 16),
                    textAlign: TextAlign.center,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 16.0, vertical: 10),
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.resolveWith<Color>(
                          (states) => C.bgButton),
                    ),
                    onPressed: () {},
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 12.0),
                      child: Text(
                        "ADD FAVORITES",
                        style: TextStyle(color: C.accent),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Divider(height: 1, thickness: 1, color: C.dividerColor),
                SizedBox(height: 10),
                SubtitleWidget("Recent"), // !
                SizedBox(height: 10),
                RecentWidget(
                  user: "werainkhatri",
                  repo: "github-clone",
                  number: "69",
                  title:
                      "Create a github clone and display it to everyone like a G",
                  time: "3h",
                  count: "5",
                  icon: Icon(
                    Icons.account_circle_outlined,
                    color: Colors.white,
                    size: 18,
                  ),
                  isIssue: false,
                  comment: "You commented",
                ),
                RecentWidget(
                  user: "flutter",
                  repo: "flutter",
                  number: "80808",
                  title: "Fix Hot reload icon in flutter/README.md",
                  time: "2d",
                  count: "2",
                  icon: Icon(
                    Icons.account_circle_rounded,
                    color: Colors.white,
                    size: 18,
                  ),
                  isIssue: true,
                  comment: "google-bot commented",
                ),
                RecentWidget(
                  user: "flutter",
                  repo: "flutter",
                  number: "80808",
                  title: "Fix Hot reload icon in flutter/README.md",
                  time: "2d",
                  count: "2",
                  icon: Icon(
                    Icons.account_circle_rounded,
                    color: Colors.white,
                    size: 18,
                  ),
                  isIssue: true,
                  comment: "google-bot commented",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class RecentWidget extends StatelessWidget {
  final String user, repo, number, title, time, count, comment;
  final Widget icon;
  final bool isIssue;
  const RecentWidget({
    this.user,
    this.repo,
    this.number,
    this.title,
    this.time,
    this.count,
    this.icon,
    this.isIssue,
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
                color: C.issuePRIconColor,
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
