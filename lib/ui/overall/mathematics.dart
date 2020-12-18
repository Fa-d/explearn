import 'package:flutter/material.dart';

class something extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "The Header",
            style: TextStyle(
                fontSize: 16,
                color: Colors.black87,
                fontWeight: FontWeight.bold),
          ),
          Padding(padding: EdgeInsets.only(top: 20)),
          _forRows(),
          _forRows(),
          _forRows(),
          _forRows(),
        ],
      ),
    );
  }
}

Widget _forRows() {
  return Row(
    children: [
      Expanded(
        child: Text(
          "BANANAS1",
          style: TextStyle(fontSize: 16, color: Colors.black87),
        ),
        flex: 2,
      ),
      Expanded(
        child: Text("bananas2"),
        flex: 6,
      )
    ],
  );
}
