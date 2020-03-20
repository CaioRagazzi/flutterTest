import 'package:entertainment_app/models/Movie.dart';
import 'package:http/http.dart';
import 'dart:convert';

class HttpService {
  static String apiKey = '861e58c6a138f67504e8efd54cafa989';

  final String url =
      Uri.encodeFull('https://api.themoviedb.org/3/movie/upcoming?api_key=$apiKey&language=en-US&page=1');

  Future<List<Movie>> getMovies() async {
    Response res = await get(url);
    var movies = List<Movie>();
    
    if (res.statusCode == 200) {
      var body = json.decode(res.body);
      var result = body['results'] as List;
      result.forEach((item) =>
          {movies.add(Movie(id: item['id'], name: item['original_title']))});
    }
    return movies;
  }
}
