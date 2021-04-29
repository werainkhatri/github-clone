import 'dart:math';

import 'package:flutter/material.dart';
import 'package:github_clone/widgets/title.dart';
import 'package:provider/provider.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

import 'app_state.dart';
import 'constants.dart';
import 'widgets/my_work.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  RefreshController _refreshController;

  final List<Widget> _recentItems =
      C.notifications.sublist(0, C.notifications.length ~/ 2);

  @override
  void initState() {
    super.initState();
    _refreshController = RefreshController(initialRefresh: false);
  }

  void _onRefresh() async {
    AppState state = Provider.of<AppState>(context, listen: false);
    // monitor network fetch
    await Future.delayed(Duration(milliseconds: 500));
    if (mounted && state.homeState < _recentItems.length) state.homeState++;
    _refreshController.refreshCompleted();
  }

  @override
  Widget build(BuildContext context) {
    int _count = Provider.of<AppState>(context).homeState;
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
            child: SmartRefresher(
              controller: _refreshController,
              onRefresh: _onRefresh,
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
                    [
                      "Organizations",
                      Icons.home_work_outlined,
                      Color(0xFFFF8A38)
                    ]
                  ].map((e) =>
                      MyWorkWidget(title: e[0], icon: e[1], color: e[2])),
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
                        backgroundColor:
                            MaterialStateProperty.resolveWith<Color>(
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
                  ..._recentItems.sublist(0, _count),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
