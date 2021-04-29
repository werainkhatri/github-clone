import 'package:flutter/material.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

import '../constants.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key key}) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  RefreshController _refreshController;

  @override
  void initState() {
    super.initState();
    _refreshController = RefreshController(initialRefresh: false);
  }

  void _onRefresh() async {
    // monitor network fetch
    await Future.delayed(Duration(milliseconds: 500));
    setState(() {});
    _refreshController.refreshCompleted();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          AppBar(
            elevation: 0,
            backgroundColor: C.background,
            actions: [
              IconButton(
                icon: Icon(
                  Icons.share_outlined,
                  color: Theme.of(context).accentColor,
                ),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(
                  Icons.settings_outlined,
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
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Row(
                      children: [
                        ClipOval(
                          child: Image.network(
                            C.imageURL,
                            height: 64,
                          ),
                        ),
                        SizedBox(width: 15),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Viren Khatri",
                              style: TextStyle(
                                color: Color(0xFFD8D8D8),
                                fontSize: 26,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "werainkhatri",
                              style: TextStyle(
                                color: Color(0xFF9194A1),
                                fontSize: 16,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 15),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Card(
                      color: Color(0xFF2A2C31),
                      margin: EdgeInsets.zero,
                      child: Padding(
                        padding: const EdgeInsets.all(12),
                        child: Row(
                          children: [
                            Image.network(C.workingEmoteURL, height: 16),
                            SizedBox(width: 10),
                            Text(
                              "Contributing",
                              style: TextStyle(
                                color: Color(0xFFFBFBFC),
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 15),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Text(
                      C.bio,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    ),
                  ),
                  SizedBox(height: 15),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Row(
                      children: [
                        Icon(
                          Icons.home_work_outlined,
                          color: C.unhighlightedIconColor,
                          size: 20,
                        ),
                        SizedBox(width: 10),
                        GestureDetector(
                          onTap: () {},
                          child: Text(
                            "@ECellNitrr",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        SizedBox(width: 15),
                        Icon(
                          Icons.location_on_outlined,
                          color: C.unhighlightedIconColor,
                          size: 20,
                        ),
                        SizedBox(width: 5),
                        Text(
                          "Ulhasnagar, Maharashtra",
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Row(
                      children: [
                        Icon(
                          Icons.mail_outline,
                          color: C.unhighlightedIconColor,
                          size: 20,
                        ),
                        SizedBox(width: 10),
                        GestureDetector(
                          onTap: () {},
                          child: Text(
                            "werainkhatri.work@gmail.com",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Row(
                      children: [
                        Icon(
                          Icons.account_circle_outlined,
                          color: C.unhighlightedIconColor,
                          size: 20,
                        ),
                        SizedBox(width: 10),
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "33",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              TextSpan(text: " followers "),
                              TextSpan(
                                text: "· 35",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              TextSpan(text: " following"),
                            ],
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 25),
                  Container(
                    color: Colors.black,
                    width: double.infinity,
                    height: 20,
                  ),
                  SizedBox(height: 15),
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
                                style:
                                    TextStyle(color: C.unhighlightedTextColor),
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
              ),
            ),
          )
        ],
      ),
    );
  }
}
