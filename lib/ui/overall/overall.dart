import 'package:explearn/tempGenerators/subjectTopicUrlGenerator.dart';
import 'package:faker/faker.dart';
import 'package:flutter/material.dart';

class overall extends StatefulWidget {
  overall({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _overallState createState() => _overallState();
}

class _overallState extends State<overall> {
  Faker fake = Faker();
  List<subtopicurlGen> somelist = null;

  Future<List<subtopicurlGen>> _generateData() async {
    subtopicurlGen someunitdata = new subtopicurlGen();
    for (int i = 0; i < 10; i++) {
      someunitdata = new subtopicurlGen(
          subjectName: fake.person.name(),
          topicName: fake.person.lastName(),
          url: fake.internet.httpsUrl(),
          toIntent: fake.lorem.sentence());
      somelist.add(someunitdata);
    }
    print(somelist.length);
    return Future.delayed(Duration(seconds: 4), () => somelist);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: FutureBuilder(
        future: _generateData(),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.data == null) {
            return Container(
              child: Center(
                child: GestureDetector(
                    onTap: () {
                      print(somelist.length);
                    },
                    child: Text("Loading")),
              ),
            );
          } else {
            return ListView.builder(
              itemCount: snapshot.data.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  title: Text(snapshot.data),
                );
              },
            );
          }
        },
      ),
    );
  }
}
