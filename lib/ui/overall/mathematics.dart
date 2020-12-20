import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class something extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var appBar = AppBar();
    return Container(
      height: MediaQuery.of(context).size.height / 3,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 6,
        itemExtent: MediaQuery.of(context).size.height / 3,
        itemBuilder: (context, index) {
          return _cards(context, appBar);
        },
      ),
    );
  }
}

Widget _cards(BuildContext context, AppBar appBar) {
  return Align(
    child: Container(
      height: 100,
      child: Card(
        semanticContainer: true,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        elevation: 5,
        margin: EdgeInsets.all(10),
        color: Colors.orange[500],
        child: ListTile(
          leading: Column(
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
              ),
              Text("Name"),
            ],
          ),
          title: Text('Teacher of the month', style: _textStyle(10)),
          subtitle: Text('MAY 2020', style: _textStyle(8)),
          onTap: () {},
        ),
      ),
    ),
  );
}

_textStyle(double size) {
  return TextStyle(
      fontSize: size,
      fontWeight: FontWeight.bold,
      color: Colors.white,
      fontFamily: 'Poppins-Bold');
}
