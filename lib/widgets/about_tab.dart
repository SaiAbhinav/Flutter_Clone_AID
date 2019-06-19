import 'package:amrita_info_desk/utils/data.dart';
import 'package:flutter/material.dart';

class AboutTab extends StatelessWidget {
  final TextStyle titleStyle =
      TextStyle(fontSize: 16.0, color: Colors.grey.shade600);
  final TextStyle contentStyle =
      TextStyle(fontSize: 13.0, color: Colors.grey.shade600);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: ListView.builder(
        itemCount: aboutContent.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 10.0),
            child: Text(
              aboutContent[index],
              style: index == 0 ? titleStyle : contentStyle,
            ),
          );
        },
      ),
    );
  }
}
