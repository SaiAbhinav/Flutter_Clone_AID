import 'package:flutter/material.dart';

class ContactTab extends StatelessWidget {
  final TextStyle titleStyle = TextStyle(fontSize: 20.0);
  final TextStyle subTitleStyle =
      TextStyle(fontSize: 16.0, color: Colors.grey.shade600);
  final TextStyle contentStyle =
      TextStyle(fontSize: 13.0, color: Colors.grey.shade600);

  RaisedButton _buildRaisedButton(Icon icon, String content) {
    return RaisedButton(
      padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
      onPressed: () {},
      child: Row(
        children: <Widget>[
          icon,
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(content),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(18.0),
      children: <Widget>[
        Text('Contact Details', style: titleStyle),
        SizedBox(height: 26.0),
        Text(
          'Amrita Vishwa Vidyapeetham (University)\nAmritanagar\nCoimbatore - 647112\nTamilnadu, India',
          style: contentStyle,
        ),
        SizedBox(height: 16.0),
        _buildRaisedButton(Icon(Icons.phone), '+91-422-2685000'),
        SizedBox(height: 6.0),
        _buildRaisedButton(Icon(Icons.mail), 'univhq@amrita.edu'),
        SizedBox(height: 24.0),
        Text('Getting here', style: titleStyle),
        SizedBox(height: 24.0),
        Text('By Train', style: subTitleStyle),
        SizedBox(height: 24.0),
        Text('Passenger trains are available from Coimbatore Junction Railway Station and Palakkad Junction Railway Station. Alight at Ettimadai Railway Station and the campus is at 300 mtrs walk from the railway station.', style: contentStyle),
        SizedBox(height: 12.0),
        _buildRaisedButton(Icon(Icons.info), 'View Train Info'),
        SizedBox(height: 24.0),
        Text('By Bus', style: subTitleStyle),
        SizedBox(height: 24.0),
        Text('From Palakkad side, get down at Ettimadai (Amrita College) bus stop on the NH-47and hire an auto rickshaw to the campus (3 kms). From Coimbatore, board bus number 96, 45=8, S2 or 3G and get down at Ettimadai (Amrita College) bus stop and hire an auto rickshaw to the campus (3 kms).', style: contentStyle),
        SizedBox(height: 12.0),
        _buildRaisedButton(Icon(Icons.directions), 'Get Directions'),
      ],
    );
  }
}
