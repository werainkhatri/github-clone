import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

import '../app_state.dart';
import '../constants.dart';
import '../widgets/title.dart';

class NotificationsScreen extends StatefulWidget {
  const NotificationsScreen({Key key}) : super(key: key);

  @override
  _NotificationsScreenState createState() => _NotificationsScreenState();
}

class _NotificationsScreenState extends State<NotificationsScreen> {
  RefreshController _refreshController;

  @override
  void initState() {
    super.initState();
    _refreshController = RefreshController(initialRefresh: false);
  }

  void _onRefresh() async {
    AppState state = Provider.of<AppState>(context, listen: false);
    // monitor network fetch
    await Future.delayed(Duration(milliseconds: 500));
    if (mounted && state.notificationState > 0) state.notificationState--;
    _refreshController.refreshCompleted();
  }

  @override
  Widget build(BuildContext context) {
    int _count = Provider.of<AppState>(context).notificationState;
    return SafeArea(
      child: Column(
        children: [
          AppBar(
            elevation: 0,
            backgroundColor: C.background,
            title: TitleWidget(title: "Inbox"),
            actions: [
              TextButton(
                child: Row(
                  children: [
                    Icon(
                      Icons.filter_list_rounded,
                      color: Theme.of(context).accentColor,
                    ),
                    SizedBox(width: 5),
                    Text(
                      "FILTER",
                      style: TextStyle(fontWeight: FontWeight.w300),
                    ),
                    SizedBox(width: 16),
                  ],
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
                children: C.notifications.sublist(_count),
              ),
            ),
          )
        ],
      ),
    );
  }
}
