import 'package:amrita_info_desk/pages/details.dart';
import 'package:amrita_info_desk/utils/data.dart';
import 'package:flutter/material.dart';

class UserDetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(234, 30, 99, 0.75),
        title: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('Amrita UMS'),
            Text(
              'Logged in as xxx xxxx xxxxxxx',
              style: TextStyle(
                color: Colors.white.withOpacity(0.7),
                fontSize: 14.0,
              ),
            ),
          ],
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.bug_report),
          ),
        ],
      ),
      body: UserDetails(),
    );
  }
}

class UserDetails extends StatelessWidget {
  final List<Map<String, dynamic>> marksDetails = [
    {'code': '15CSE334', 'marks': 5.0},
    {'code': '15CSE411', 'marks': 5.0},
    {'code': '15CSE334', 'marks': 20.0},
    {'code': '15CSE334', 'marks': 42.0},
    {'code': '15CSE411', 'marks': 36.0},
    {'code': '15CSE334', 'marks': 46.0},
    {'code': '15CSE411', 'marks': 39.0}
  ];

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        SizedBox(
          height: 20.0,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Row(
            children: <Widget>[
              Container(
                width: 100.0,
                height: 100.0,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  image: DecorationImage(
                    image: AssetImage('assets/thanos.jpg'),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'xxx xxxx xxxxxxx',
                      style: TextStyle(
                        fontSize: 20.0,
                      ),
                    ),
                    Text(
                      'xx.xx.xxxxxxxxxx',
                      style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.grey.shade600,
                      ),
                    ),
                    Text(
                      'CURRENT CGPA: 8.4',
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.grey.shade600,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        SizedBox(
          height: 20.0,
        ),
        _buildCard(cards[0], 'Attendance Levels', attendanceDetails, context),
        _buildCard(cards[1], 'Your Performance', performanceDetails, context),
        _buildCard(cards[2], 'Your Marks', marksDetails, context),
        _buildCard(cards[3], '', [], context),
      ],
    );
  }

  _showSemesters(
      BuildContext context, String title, List<Map<String, dynamic>> data) {
    List<Widget> semesterOptions = [];

    semesters.forEach((semester) {
      Widget option = SimpleDialogOption(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Text(semester),
        ),
        onPressed: () {
          Navigator.of(context).pop();
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (BuildContext context) => DetailsPage(
                    title: title,
                    details: data,
                  ),
            ),
          );
        },
      );

      semesterOptions.add(option);
    });

    SimpleDialog dialog = SimpleDialog(
      title: Text('Select a Semester'),
      children: semesterOptions,
    );

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return dialog;
      },
    );
  }

  Widget _buildCard(Map<String, dynamic> cardDetail, String title,
      List<Map<String, dynamic>> data, BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Card(
        child: ListTile(
          onTap: () {
            _showSemesters(context, title, data);
          },
          contentPadding: EdgeInsets.all(10.0),
          leading: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Icon(
              cardDetail['icon'],
              size: 50.0,
            ),
          ),
          title: Text(cardDetail['title']),
          subtitle: Text(cardDetail['subtitle']),
        ),
      ),
    );
  }
}
