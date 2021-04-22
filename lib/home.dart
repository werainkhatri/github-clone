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
                SubtitleWidget("My Work"),
                SizedBox(height: 10),
                MyWorkWidget(
                  title: "Issues",
                  icon: Icons.error_outline,
                  color: Color(0xFF40D663),
                ),
                MyWorkWidget(
                  title: "Pull Requests",
                  icon: Icons.merge_type_outlined,
                  color: Color(0xFF2E8FFF),
                ),
                MyWorkWidget(
                  title: "Discussiong",
                  icon: Icons.message_outlined,
                  color: Color(0xFF7548C7),
                ),
                MyWorkWidget(
                  title: "Repositories",
                  icon: Icons.book_outlined,
                  color: Color(0xFF41434E),
                ),
                MyWorkWidget(
                  title: "Organizations",
                  icon: Icons.home_work_outlined,
                  color: Color(0xFFFF8A38),
                ),
                SizedBox(height: 10),
                Divider(height: 1, thickness: 1, color: C.dividerColor),
                SizedBox(height: 10),
                SubtitleWidget("Favorites"),
                SizedBox(height: 10),
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
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.resolveWith<Color>(
                          (states) => C.bgButton),
                    ),
                    onPressed: () {},
                    child: Container(
                      color: C.background,
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
                SubtitleWidget("Recent"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class RecentWidget extends StatelessWidget {
  final String user, repo, number, title, time, count;
  final Image image;
  final bool isIssue;
  const RecentWidget({
    this.user,
    this.repo,
    this.number,
    this.title,
    this.time,
    this.count,
    this.image,
    this.isIssue,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: Icon(
                isIssue ? Icons.error_outline : Icons.merge_type_outlined,
                color: C.issuePRIconColor,
              ),
            )
          ],
        ),
        Row(),
        Row(),
      ],
    );
  }
}
