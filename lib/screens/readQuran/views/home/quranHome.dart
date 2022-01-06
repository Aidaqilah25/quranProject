import 'package:flutter/material.dart';
import 'package:simple_quran_apps/screens/readQuran/configuration/typography.dart';
import 'package:simple_quran_apps/screens/readQuran/views/home/tabbar_view/surah_view/surah_view.dart';

import 'component/home_header.dart';

class QuranHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Al-Quran"),
        centerTitle: true,
        backgroundColor: primaryColor,
      ),
      body: DefaultTabController(
        length: 1,
        child: NestedScrollView(
          headerSliverBuilder: (context, value) {
            return [
              new SliverAppBar(
                automaticallyImplyLeading: false,
                expandedHeight: MediaQuery.of(context).size.height / 3.2,
                flexibleSpace: FlexibleSpaceBar(
                  background: HomeHeader(),
                ),
              ),
              new SliverAppBar(
                automaticallyImplyLeading: false,
                pinned: true,
                toolbarHeight: 0,
                bottom: new TabBar(
                  labelColor: primaryColor,
                  unselectedLabelColor: secondaryColor,
                  indicator: UnderlineTabIndicator(
                    borderSide: BorderSide(color: primaryColor, width: 5),
                  ),
                  labelStyle: Theme.of(context)
                      .textTheme
                      .apply(fontSizeDelta: -1)
                      .bodyText1,
                  tabs: [
                    new Tab(
                      text: 'Surah',
                    ),
                  ],
                ),
              ),
            ];
          },
          body: TabBarView(
            children: [
              SurahView(),
            ],
          ),
        ),
      ),
    );
  }
}
