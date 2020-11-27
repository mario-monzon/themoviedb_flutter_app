// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations
class _$ApiService extends ApiService {
  _$ApiService([ChopperClient client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = ApiService;

  @override
  Future<Response<dynamic>> getMovies(
      String apiKey, String language, int page) {
    final $url =
        'https://api.themoviedb.org/3/movie/popular?api_key={apiKey}&language={language}&page={page}';
    final $params = <String, dynamic>{
      'api_key': apiKey,
      'language': language,
      'page': page
    };
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<dynamic, dynamic>($request,
        responseConverter: stringResponse);
  }
}
