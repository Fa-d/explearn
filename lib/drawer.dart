import 'package:explearn/fragments/CurrentRankFragment.dart';
import 'package:explearn/fragments/Questionaire.dart';
import 'package:flutter/material.dart';

import 'fragments/AskFragment.dart';
import 'fragments/StudyFragment.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Center(
              child: Column(
                children: [
                  Text('Your profile'),
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
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
          ),
          ListTile(
            trailing: Icon(Icons.recent_actors),
            title: Text('Study'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => new StudyFragment()),
              );
            },
          ),
          ListTile(
            trailing: Icon(Icons.connect_without_contact),
            title: Text('Ask'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => new AskFragment()),
              );
            },
          ),
          ListTile(
            trailing: Icon(Icons.ac_unit),
            title: Text('Current Rank'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => new CurrentRankFragment()),
              );
            },
          ),
          ListTile(
            trailing: Icon(Icons.book_outlined),
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
