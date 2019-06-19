import 'package:amrita_info_desk/pages/curriculum_info.dart';
import 'package:amrita_info_desk/pages/transport.dart';
import 'package:amrita_info_desk/utils/data.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  _showTransportSelectionDialogBox(BuildContext context) {
    List<Widget> transportOptions = [];
    tranports.forEach((transport) {
      Widget option = SimpleDialogOption(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Text(transport),
        ),
        onPressed: () {
          Navigator.of(context).pop();
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (BuildContext context) =>
                  TransportPage(transport: transport),
            ),
          );          
        },
      );
      transportOptions.add(option);
    });

    SimpleDialog dialog = SimpleDialog(
      title: Text('View timings of ?'),
      children: transportOptions,
    );

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return dialog;
      }
    );
  }

  _showCourseSelectionDialogBox(BuildContext context) {
    List<Widget> courseOptions = [];
    courses.forEach((course) {
      Widget option = SimpleDialogOption(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Text(course),
        ),
        onPressed: () {
          Navigator.of(context).pop();
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (BuildContext context) =>
                  CurriculumInfoPage(course: course),
            ),
          );
        },
      );
      courseOptions.add(option);
    });

    SimpleDialog dialog = SimpleDialog(
      title: Text('Select your Department'),
      children: courseOptions,
    );

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return dialog;
      },
    );
  }

  _showSnackBar(context) {
    final snackBar = SnackBar(
      content: Text('Announcements is under construction'),
    );

    Scaffold.of(context).showSnackBar(snackBar);
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      children: List.generate(dashboardOptions.length, (index) {
        return InkWell(
          onTap: () {
            switch (index) {
              case 0:
                Navigator.pushNamed(context, '/news');
                break;
              case 1:
                Navigator.pushNamed(context, '/aums');
                break;
              case 2:
                Navigator.pushNamed(context, '/calender');
                break;
              case 4:
                _showTransportSelectionDialogBox(context);
                break;
              case 5:
                _showSnackBar(context);
                break;
              case 6:
                _showCourseSelectionDialogBox(context);
                break;
              case 7:
                Navigator.pushNamed(context, '/about');
                break;
              default:
            }
          },
          child: Container(
            decoration: BoxDecoration(
              color: dashboardOptions[index]['color'],
            ),
            child: Stack(
              children: <Widget>[
                Center(
                  child: Icon(
                    dashboardOptions[index]['icon'],
                    color: Colors.white,
                    size: 100.0,
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.all(12.0),
                      width: double.infinity,
                      color: Colors.black.withOpacity(0.3),
                      child: Text(
                        dashboardOptions[index]['name'],
                        style: TextStyle(color: Colors.white, fontSize: 15.0),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      }),
    );
  }
}