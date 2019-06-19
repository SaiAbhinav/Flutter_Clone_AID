import 'dart:math';

import 'package:amrita_info_desk/utils/data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CurriculumInfoPage extends StatelessWidget {
  final String course;
  CurriculumInfoPage({this.course});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(course),
      ),
      body: CurriculumInfo(),
    );
  }
}

class CurriculumInfo extends StatelessWidget {
  Widget _buildHeaderTableRows(semesters) {
    return Table(
      children: [
        TableRow(
          children: [
            TableCell(
              child: Container(
                alignment: Alignment.center,
                padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 6.0),
                decoration: BoxDecoration(
                  color: Colors.blue,
                  border: Border(
                    right: BorderSide(
                      color: Colors.blueAccent,
                      style: BorderStyle.solid,
                      width: 1.0,
                    ),
                  ),
                ),
                child: Text(
                  semesters[0],
                  style: TextStyle(
                    fontSize: 12.0,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            TableCell(
              child: Container(
                alignment: Alignment.center,
                padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 6.0),
                color: Colors.blue,
                child: Text(
                  semesters[1],
                  style: TextStyle(
                    fontSize: 12.0,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildContentTableRows(semesters) {
    final int length1 = subjects[semesters[0]].length;
    final int length2 = subjects[semesters[1]].length;
    final int size = max(length1, length2);
    
    return Table(
      children: List.generate(size, (index) {
        return TableRow(children: [
          TableCell(
            verticalAlignment: TableCellVerticalAlignment.fill,
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 6.0),
              decoration: BoxDecoration(
                color: index % 2 != 0 ? Colors.grey.shade200 : Colors.white,
                border: Border(
                  right: BorderSide(
                    color: Colors.grey,
                    style: BorderStyle.solid,
                    width: 1.0,
                  ),
                ),
              ),
              child: index < length1
                  ? Text(
                      subjects[semesters[0]][index],
                      style: TextStyle(
                        fontSize: 12.0,
                      ),
                    )
                  : Text(''),
            ),
          ),
          TableCell(
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 6.0),
              color: index % 2 != 0 ? Colors.grey.shade200 : Colors.white,
              child: index < length2
                  ? Text(
                      subjects[semesters[1]][index],
                      style: TextStyle(
                        fontSize: 12.0,
                      ),
                    )
                  : Text(''),
            ),
          ),
        ]);
      }),
    );
  }
  
  @override
  Widget build(BuildContext context) {
    var semesters = subjects.keys.toList();    
    return ListView(
      children: <Widget>[
        _buildHeaderTableRows(semesters.sublist(0)),
        _buildContentTableRows(semesters.sublist(0)),
        _buildHeaderTableRows(semesters.sublist(2)),
        _buildContentTableRows(semesters.sublist(2)),
        _buildHeaderTableRows(semesters.sublist(4)),
        _buildContentTableRows(semesters.sublist(4)),
        _buildHeaderTableRows(semesters.sublist(6)),
        _buildContentTableRows(semesters.sublist(6)),
      ],
    );
  }
}
