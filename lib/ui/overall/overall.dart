import 'package:explearn/tempGenerators/subjectTopicUrlGenerator.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class overall extends StatefulWidget {
  overall({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _overallState createState() => _overallState();
}

class _overallState extends State<overall> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: FutureBuilder<List<Photo>>(
        future: fetchPhotos(http.Client()),
        builder: (context, snapshot) {
          if (snapshot.hasError) print(snapshot.error);
          return snapshot.hasData
              ? PhotoList(photos: snapshot.data)
              : Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}

class PhotoList extends StatelessWidget {
  List<Photo> photos;
  PhotoList({Key key, this.photos}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: photos.length,
        itemBuilder: (context, index) {
          return Image.network(photos[index].thumbnailUrl);
        });
  }
}
