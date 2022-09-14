import 'package:flutter/material.dart';
import 'package:nft/componnets/my_appbar.dart';
import 'package:nft/componnets/my_tabbar.dart';

import '../componnets/my_bootombar.dart';

import '../tabs/recent_tabs.dart';
import '../tabs/top_tab.dart';
import '../tabs/trending_tab.dart';
import '../theme/const.dart';
import '../util/glass_box.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // user tapped searched button
  void searchButtonTapped() {}

  // tab options
  List tabOption = [
    ["Recent", RecentTab()],
    ["Trending", TrendingTab()],
    ["Top", TopTab()],
  ];

  // bottom bar navigation
  int _currentBottonIndex = 0;
  void _handleIndexChanged(int? index) {
    setState(() {
      _currentBottonIndex = index!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabOption.length,
      child: Scaffold(
        backgroundColor: backgroundColor,
        extendBody: true,
        bottomNavigationBar: GlassBox(
          child: MyBottomBar(
            index: _currentBottonIndex,
            onTap: _handleIndexChanged,
          ),
        ),
        body: ListView(
          children: [
            // title + search button
            MyAppBar(
              title: 'Explore Collections',
              onSearchTap: searchButtonTapped,
            ),

            // tab bar
            SizedBox(
              height: 600,
              child: MyTabBar(
                tabOptions: tabOption,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
