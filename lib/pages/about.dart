import 'package:amrita_info_desk/widgets/about_tab.dart';
import 'package:amrita_info_desk/widgets/contact_tab.dart';
import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text('About Amrita'),
          bottom: TabBar(
            tabs: <Widget>[
              Tab(text: 'ABOUT'),
              Tab(text: 'CONTACT'),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            AboutTab(),
            ContactTab()
          ],
        ),
      ),
    );
  }
}
