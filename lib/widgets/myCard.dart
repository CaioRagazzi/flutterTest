import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        child: ButtonBar(
          children: <Widget>[
            FlatButton(
              child: const Text('BUY TICKETS'),
              onPressed: () {/* ... */},
            ),
            FlatButton(
              child: const Text('LISTEN'),
              onPressed: () {/* ... */},
            ),
          ],
        ),
      ),
    );
  }
}
