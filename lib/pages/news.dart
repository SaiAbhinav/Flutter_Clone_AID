import 'package:amrita_info_desk/utils/data.dart';
import 'package:flutter/material.dart';

class NewsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(254, 193, 7, 0.75),
        title: Text('News'),
      ),
      body: News(),
    );
  }
}

class News extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: news.length,
      itemBuilder: (BuildContext context, int index) {
        return Card(
          child: Column(children: <Widget>[
            Container(
              height: 150.0,
              color: news[index]['color'],
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                decoration: BoxDecoration(
                  border: Border(
                    left: BorderSide(
                      color: Color.fromRGBO(254, 193, 7, 0.75),
                      style: BorderStyle.solid,
                      width: 2.0,
                    ),
                  ),
                ),
                child: Text(
                  news[index]['title'],
                  style: TextStyle(
                    color: Colors.black.withOpacity(0.8),
                    fontSize: 13.0,
                  ),
                ),
              ),
            ),
          ]),
        );
      },
    );
  }
}