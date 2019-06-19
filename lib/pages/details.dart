import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  final String title;
  final List<Map<String, dynamic>> details;

  DetailsPage({this.title, this.details});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: Color.fromRGBO(234, 30, 99, 0.75),
      ),
      body: Details(details),
    );
  }
}

class Details extends StatelessWidget {
  final List<Map<String, dynamic>> details;

  Details(this.details);

  Widget _buildAttendance(Map<String, dynamic> detail) {
    final double percentage = (detail['classes']['attendedClasses'] * 100) /
        detail['classes']['totalClasses'];
    return ListTile(
      leading: CircleAvatar(
        maxRadius: 30.0,
        backgroundColor: percentage > 85
            ? Colors.greenAccent[700]
            : percentage > 75 ? Colors.yellow[600] : Colors.red,
        child: Text(
          '${percentage.round()}%',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      title: Text(detail['title']),
      subtitle: Text(
        'You attended ${detail['classes']['attendedClasses']} of ${detail['classes']['totalClasses']} classes',
        style: TextStyle(
          color: Colors.grey.shade600,
          fontSize: 16.0,
        ),
      ),
    );
  }

  Widget _buildPerformance(Map<String, dynamic> detail) {
    final String grade = detail['grade'];
    return ListTile(
      leading: CircleAvatar(
        maxRadius: 30.0,
        backgroundColor: grade == 'O'
            ? Colors.red
            : ['A+', 'A'].contains(grade)
                ? Colors.greenAccent[700]
                : ['B+', 'B'].contains(grade)
                    ? Colors.yellow[600]
                    : Colors.blue[800],
        child: Text(
          grade,
          style: TextStyle(
            color: Colors.white,
            fontSize: 22.0,
          ),
        ),
      ),
      title: Text(detail['title']),
      subtitle: Text(
        '${detail['code']} - ${detail['batch']}',
        style: TextStyle(
          color: Colors.grey.shade600,
          fontSize: 16.0,
        ),
      ),
    );
  }

  Widget _buildMarks(Map<String, dynamic> detail) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: ListTile(
        leading: CircleAvatar(
          maxRadius: 30.0,
          child: Text(
            '${detail['marks']}',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18.0,
            ),
          ),
        ),
        title: Text(
          detail['code'],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final bool isAttendance = details[0].keys.contains('classes');
    final bool isPerformance = details[0].keys.contains('grade');
    final bool isMarks = details[0].keys.contains('marks');
    print(isMarks);
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) {
        return isAttendance
            ? _buildAttendance(details[index])
            : isPerformance
                ? _buildPerformance(details[index])
                : isMarks ? _buildMarks(details[index]) : Container();
      },
      itemCount: details.length,
    );
  }
}
