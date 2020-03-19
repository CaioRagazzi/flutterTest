import 'package:flutter/material.dart';
import 'package:entertainment_app/screens/UpCommingMovies.dart';

class MyDrawer extends StatelessWidget {

  void goToTela1Screen(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (_) {
      return UpCommingMoviesScreen();
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Text(
              'Drawer Header',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.movie),
            title: Text('UpComming Movies'),
            onTap: () {
              goToTela1Screen(context);
            },
          ),
        ],
      ),
    );
  }
}
