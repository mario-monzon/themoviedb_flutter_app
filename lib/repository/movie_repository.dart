import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:themoviedb_flutter_app/models/movie.dart';
import 'package:themoviedb_flutter_app/models/movies.dart';

class MoviesProvider {
  String _apikey = '6b620a8ab956bb4d6bdf7f8edc5c070b';
  String _url = 'api.themoviedb.org';
  String _language = 'es-ES';

  int _popularPage = 0;
  bool _loading = false;

  List<Movie> _popularMovies = new List();

  final _popularMoviesStreamController =
  StreamController<List<Movie>>.broadcast();

  Function(List<Movie>) get popularMoviesSink =>
      _popularMoviesStreamController.sink.add;

  Stream<List<Movie>> get popularMoviesStream =>
      _popularMoviesStreamController.stream;

  void disposeStreams() {
    _popularMoviesStreamController?.close();
  }

  Future<List<Movie>> _processResponse(Uri url) async {
    final resp = await http.get(url);
    final decodedData = json.decode(resp.body);
    final movies = new Movies.fromJsonList(decodedData['results']);
    return movies.items;
  }


  Future<List<Movie>> getPopular() async {
    if (_loading) return [];
    _loading = true;

    _popularPage++;
    final url = Uri.https(_url, '3/movie/popular', {
      'api_key': _apikey,
      'language': _language,
      'page': _popularPage.toString()
    });
    final resp = await _processResponse(url);
    _popularMovies.addAll(resp);
    popularMoviesSink(_popularMovies);

    _loading = false;
    return resp;
  } // getPopular


} // MoviesProvider