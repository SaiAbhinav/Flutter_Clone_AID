import 'package:amrita_info_desk/utils/data.dart';
import 'package:flutter/material.dart';

class TransportPage extends StatelessWidget {
  final String transport;

  TransportPage({this.transport});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(156, 40, 177, 0.65),
        title: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Train & Bus Info',
              style: TextStyle(
                fontWeight: FontWeight.normal,
              ),
            ),
            Text(
              transport,
              style: TextStyle(
                fontWeight: FontWeight.normal,
                fontSize: 14.0,
                color: Colors.white.withOpacity(0.7),
              ),
            ),
          ],
        ),
      ),
      // change to transport from dynamic values
      body: TransportInfo('Trains from Coimbatore'),
    );
  }
}

class TransportInfo extends StatelessWidget {
  final String transport;
  TransportInfo(this.transport);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: transportDetails[transport].length,
      itemBuilder: (BuildContext context, int index) {
        return Card(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Center(
              child: Column(
                children: <Widget>[
                  Text(
                    '${transportDetails[transport][index]['transportNo']} ${transportDetails[transport][index]['transportName']}',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                  RichText(
                    text: TextSpan(
                        text:
                            'Departs from ${transportDetails[transport][index]['source']} @ ',
                        style: TextStyle(
                            color: Colors.grey.shade500, fontSize: 16.0),
                        children: <TextSpan>[
                          TextSpan(
                            text:
                                '${transportDetails[transport][index]['departs']} hours',
                            style: TextStyle(
                              color: Colors.grey.shade700,
                            ),
                          ),
                        ]),
                  ),
                  RichText(
                    text: TextSpan(
                        text:
                            'Reaches ${transportDetails[transport][index]['destination']} @ ',
                        style: TextStyle(
                            color: Colors.grey.shade500, fontSize: 16.0),
                        children: <TextSpan>[
                          TextSpan(
                            text:
                                '${transportDetails[transport][index]['reaches']} hours',
                            style: TextStyle(
                              color: Colors.grey.shade700,
                            ),
                          ),
                        ]),
                  ),
                  RichText(
                    text: TextSpan(
                        text: 'Runs on ',
                        style: TextStyle(
                            color: Colors.grey.shade500, fontSize: 13.0),
                        children: <TextSpan>[
                          TextSpan(
                            text:
                                '${transportDetails[transport][index]['running']}',
                            style: TextStyle(
                              color: Colors.grey.shade700,
                            ),
                          ),
                        ]),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
