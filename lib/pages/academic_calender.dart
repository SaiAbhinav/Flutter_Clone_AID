// import 'package:flutter/material.dart';

// class AcademicCalenderPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Academic Calender'),
//         backgroundColor: Color.fromRGBO(255, 83, 83, 0.75),
//       ),
//       body: AcademicCalender(),
//     );
//   }
// }

// class AcademicCalender extends StatefulWidget {
//   @override
//   _AcademicCalenderState createState() => _AcademicCalenderState();
// }

// class _AcademicCalenderState extends State<AcademicCalender> {
//   final List<String> months = [
//     'JANUARY',
//     'FEBRUARY',
//     'MARCH',
//     'APRIL',
//     'MAY',
//     'JUNE',
//     'JULY',
//     'AUGUST',
//     'SEPTEMBER',
//     'OCTOBER',
//     'NOVEMBER',
//     'DECEMBER'
//   ];
//   final List<String> days = ['SUN', 'MON', 'TUE', 'WED', 'THU', 'FRI', 'SAT'];

//   int currentMonth = DateTime.now().month - 1;
//   int currentYear = DateTime.now().year;

//   int _getCount() {
//     if ([1, 3, 5, 7, 8, 10, 12].contains(currentMonth + 1)) {
//       return 31;
//     } else if ([4, 6, 9, 11].contains(currentMonth + 1)) {
//       return 35;
//     } else {
//       return 28;
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return ListView(
//       shrinkWrap: true,
//       children: <Widget>[
//         Padding(
//           padding: const EdgeInsets.symmetric(vertical: 6.0, horizontal: 8.0),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: <Widget>[
//               IconButton(
//                 onPressed: () {},
//                 icon: Icon(
//                   Icons.chevron_left,
//                   size: 36.0,
//                   color: Colors.red,
//                 ),
//               ),
//               Text(
//                 '${months[currentMonth]} $currentYear',
//                 style: TextStyle(
//                   fontSize: 20.0,
//                 ),
//               ),
//               IconButton(
//                 onPressed: () {},
//                 icon: Icon(
//                   Icons.chevron_right,
//                   size: 36.0,
//                   color: Colors.red,
//                 ),
//               ),
//             ],
//           ),
//         ),
//         Row(
//           mainAxisAlignment: MainAxisAlignment.spaceAround,
//           children: days.map((day) {
//             return Text(
//               day,
//               style: TextStyle(
//                 color: Colors.grey,
//                 fontSize: 13.0,
//               ),
//             );
//           }).toList(),
//         ),
//         SizedBox(
//           height: 4.0,
//         ),
//         GridView.count(
//           shrinkWrap: true,
//           primary: false,
//           crossAxisSpacing: 2.0,
//           mainAxisSpacing: 2.0,
//           crossAxisCount: 7,
//           children: List.generate(_getCount(), (index) {
//             return Container(
//               decoration: BoxDecoration(
//                 border: Border.all(
//                   width: 1.0,
//                 ),
//               ),
//               child: Center(
//                 child: Text('${index + 1}'),
//               ),
//             );
//           }),
//         ),
//       ],
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_calendar_carousel/flutter_calendar_carousel.dart';

class AcademicCalenderPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Academic Calender'),
        backgroundColor: Color.fromRGBO(255, 83, 83, 0.75),
      ),
      body: AcademicCalender(),
    );
  }
}

class AcademicCalender extends StatelessWidget {

  final List<DateTime> marked = [
    DateTime.utc(2019, 6, 13),
    DateTime.utc(2019, 6, 4),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: Colors.grey.shade300,
                width: 4.0,
              ),
            ),
          ),
          child: CalendarCarousel(
            height: 420.0,
            daysHaveCircularBorder: false,
            nextMonthDayBorderColor: Colors.grey.shade300,
            thisMonthDayBorderColor: Colors.grey.shade300,
            prevMonthDayBorderColor: Colors.grey.shade300,
            dayButtonColor: Colors.white,
            leftButtonIcon: Icon(
              Icons.chevron_left,
              size: 36.0,
              color: Colors.red,
            ),
            rightButtonIcon: Icon(
              Icons.chevron_right,
              size: 36.0,
              color: Colors.red,
            ),
            weekdayTextStyle: TextStyle(
              color: Colors.black,
            ),
            headerMargin: EdgeInsets.all(0.0),
            headerTextStyle: TextStyle(
              color: Colors.black,
              fontSize: 20.0,
            ),
            dayPadding: 0.0,
            todayBorderColor: Colors.red,
            todayButtonColor: Colors.white,
            todayTextStyle: TextStyle(
              color: Colors.black,
            ),
            weekendTextStyle: TextStyle(
              color: Colors.black,
            )
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
          child: Text(
            'The data provided here may be inaccurate. Please verify with a member of the Amrita staff before making any important decisions based on this Calender.',
            style: TextStyle(
              fontSize: 11.0,
              color: Colors.grey.shade500,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
