import 'package:flutter/material.dart';
import '../widgets//myDrawer.dart';

class MainScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(
        child: Text('Home Screen')
      ),
      drawer: MyDrawer()
    );
  }
}
