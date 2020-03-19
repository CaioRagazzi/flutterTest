import 'package:entertainment_app/models/Movie.dart';
import 'package:flutter/material.dart';
import 'package:entertainment_app/widgets/myCard.dart';
import 'package:entertainment_app/plugins/httpService.dart';

class UpCommingMoviesScreen extends StatefulWidget {
  @override
  _UpCommingMoviesScreenState createState() => _UpCommingMoviesScreenState();
}

class _UpCommingMoviesScreenState extends State<UpCommingMoviesScreen> {

  var movies = List<Movie>();

  _UpCommingMoviesScreenState() {
    getMovies();
  }

  getMovies() async {
    HttpService service = HttpService();
    var listMovies = await service.getMovies();
    setState(() {
      movies = listMovies;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('UpComming Movies'),
        ),
        body: Column(
          children: <Widget>[
            ...movies.map((item) {
              MyCard();
            }).toList()
          ],
        ));
  }
}
