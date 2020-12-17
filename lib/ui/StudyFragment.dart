import 'package:flutter/material.dart';

import 'overall/overall.dart';

class StudyFragment extends StatefulWidget {
  @override
  _StudyFragmentState createState() => _StudyFragmentState();
}

class _StudyFragmentState extends State<StudyFragment> {
  Icon cusIcon = Icon(Icons.search);
  Widget cusSearchBar = Text("AppBar");

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 8,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              unselectedLabelColor: Colors.white.withOpacity(0.3),
              indicatorColor: Colors.white,
              isScrollable: true,
              tabs: [
                Tab(icon: Icon(Icons.directions_car), text: "Overall"),
                Tab(icon: Icon(Icons.directions_transit), text: "Mathematics"),
                Tab(icon: Icon(Icons.directions_bike), text: "Chemistry"),
                Tab(icon: Icon(Icons.directions_bike), text: "Physics"),
                Tab(icon: Icon(Icons.directions_car), text: "Overall"),
                Tab(icon: Icon(Icons.directions_transit), text: "Mathematics"),
                Tab(icon: Icon(Icons.directions_bike), text: "Chemistry"),
                Tab(icon: Icon(Icons.directions_bike), text: "Physics"),
              ],
            ),
            title: Text('Study'),
            leading: new IconButton(
              icon: new Icon(Icons.arrow_back, color: Colors.white),
              onPressed: () => Navigator.of(context).pop(),
            ),
            actions: [
              IconButton(
                icon: cusIcon,
                onPressed: () {
                  setState(() {
                    if (this.cusIcon.icon == Icons.search) {
                      this.cusIcon = Icon(Icons.cancel);
                      this.cusSearchBar = TextField(
                          textInputAction: TextInputAction.go,
                          style:
                              TextStyle(color: Colors.white, fontSize: 16.0));
                    } else {
                      this.cusIcon = Icon(Icons.search);
                      this.cusSearchBar = Text("Study");
                    }
                  });
                },
              )
            ],
          ),
          body: TabBarView(
            children: [
              overall(),
              Icon(Icons.directions_transit),
              Icon(Icons.directions_bike),
              Icon(Icons.directions_bike),
              Icon(Icons.directions_car),
              Icon(Icons.directions_transit),
              Icon(Icons.directions_bike),
              Icon(Icons.directions_bike),
            ],
          ),
        ),
      ),
    );
  }
}
