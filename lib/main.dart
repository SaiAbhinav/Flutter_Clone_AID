import 'package:amrita_info_desk/pages/about.dart';
import 'package:amrita_info_desk/pages/academic_calender.dart';
import 'package:amrita_info_desk/pages/aums.dart';
import 'package:amrita_info_desk/pages/dashboard.dart';
import 'package:amrita_info_desk/pages/news.dart';
import 'package:amrita_info_desk/utils/data.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,      
      routes: {
        '/': (BuildContext context) => HomePage(),
        '/about': (BuildContext context) => AboutPage(),
        '/news': (BuildContext context) => NewsPage(),
        '/aums': (BuildContext context) => AUMSPage(),
        '/calender': (BuildContext context) => AcademicCalenderPage()
      },
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          'Amrita Info Desk',
          style: TextStyle(color: Colors.black),
        ),
      ),
      drawer: Drawer(
        child: ListView.separated(
          itemCount: drawerOptions.length,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              leading: drawerOptions[index]['icon'],
              title: Text(drawerOptions[index]['name']),
            );
          },
          separatorBuilder: (BuildContext context, int index) => index == 1
              ? Divider(
                  color: Colors.grey,
                )
              : Container(),
        ),
      ),
      body: Dashboard(),
    );
  }
}