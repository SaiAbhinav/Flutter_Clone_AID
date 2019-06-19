import 'package:amrita_info_desk/pages/user_details.dart';
import 'package:amrita_info_desk/utils/data.dart';
import 'package:flutter/material.dart';

class AUMSPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Amrita UMS'),
        backgroundColor: Color.fromRGBO(234, 30, 99, 0.75),
      ),
      body: AUMSLogin(),
    );
  }
}

class AUMSLogin extends StatefulWidget {
  @override
  _AUMSLoginState createState() => _AUMSLoginState();
}

class _AUMSLoginState extends State<AUMSLogin> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: ListView(
        children: <Widget>[
          Text(
            'Campus:',
            style: TextStyle(
              fontSize: 18.0,
              color: Colors.grey.shade600,
            ),
          ),
          SizedBox(
            height: 4.0,
          ),
          DropdownButton(
            onChanged: (value) {},
            value: campuses[0],
            items: campuses.map((campus) {
              return DropdownMenuItem(
                child: Text(campus),
                value: campus,
              );
            }).toList(),
          ),
          SizedBox(
            height: 20.0,
          ),
          Text(
            'Username:',
            style: TextStyle(
              fontSize: 18.0,
              color: Colors.grey.shade600,
            ),
          ),
          SizedBox(
            height: 4.0,
          ),
          TextFormField(
            initialValue: 'xx.xx.xxxxxxxxxx',
          ),
          SizedBox(
            height: 20.0,
          ),
          Text(
            'Password:',
            style: TextStyle(
              fontSize: 18.0,
              color: Colors.grey.shade600,
            ),
          ),
          SizedBox(
            height: 4.0,
          ),
          TextFormField(
            initialValue: 'xx.xx.xxxxxxxxxx',
            obscureText: true,
          ),
          SizedBox(
            height: 20.0,
          ),
          Container(
            color: Colors.grey.shade200,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                FlatButton(
                  onPressed: () {},
                  child: Container(
                    width: 140.0,
                    child: Text(
                      'RESET',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.blue,
                      ),
                    ),
                  ),
                ),
                FlatButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) => UserDetailsPage()
                      ),
                    );
                  },
                  child: Container(
                    width: 140.0,
                    child: Text(
                      'LOGIN',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.blue,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
