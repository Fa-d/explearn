import 'package:explearn/fragments/CurrentRankFragment.dart';
import 'package:explearn/fragments/Questionaire.dart';
import 'package:flutter/material.dart';

import 'fragments/AskFragment.dart';
import 'ui/StudyFragment.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.deepOrange,
                    shape: BoxShape.circle,
                    boxShadow: <BoxShadow>[
                      BoxShadow(
                          color: Colors.black54,
                          blurRadius: 10.0,
                          offset: Offset(0.0, 0.5))
                    ],
                  ),
                  child: IconButton(
                      icon: Icon(Icons.backspace_outlined),
                      onPressed: () {
                        Navigator.of(context).pop();
                      }),
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.pinkAccent,
                      shape: BoxShape.circle,
                      boxShadow: <BoxShadow>[
                        BoxShadow(
                            color: Colors.black54,
                            blurRadius: 10.0,
                            offset: Offset(0.0, 0.75))
                      ],
                    ),
                    child: Center(
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 10),
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Icon(Icons.house_rounded),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 10),
                          ),
                          Text('Your name'),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
          ),
          ListTile(
            leading: Icon(Icons.recent_actors),
            title: Text('Study'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => new StudyFragment()),
              );
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.connect_without_contact),
            title: Text('Ask'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => new AskFragment()),
              );
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.ac_unit),
            title: Text('Current Rank'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => new CurrentRankFragment()),
              );
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.book_outlined),
            title: Text('Questionnaire'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => new Questionaire()),
              );
            },
          ),
        ],
      ),
    );
  }
}
