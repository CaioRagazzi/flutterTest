import 'package:flutter/material.dart';
import 'package:entertainment_app/widgets/myCard.dart';
import 'package:entertainment_app/plugins/httpService.dart';

class UpCommingMoviesScreen extends StatelessWidget {
  static const apiKey = '861e58c6a138f67504e8efd54cafa989';

  var url =
      'https://api.themoviedb.org/3/movie/upcoming?api_key=$apiKey&language=en-US&page=1';

  UpCommingMoviesScreen() {
    HttpService service = HttpService();
    service.getMovies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('UpComming Movies'),
      ),
      body: MyCard(),
    );
  }
}
