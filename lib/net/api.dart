import 'dart:io';
import 'package:chopper/chopper.dart';
import 'package:flutter/cupertino.dart';
import 'package:themoviedb_flutter_app/models/movie.dart';
import 'package:http/io_client.dart' as http;
import 'json_to_type_converter.dart';

part 'api.chopper.dart';


/// Un convertidor simple que ignora el cuerpo de la respuesta
/// Para usar override el convertidor json predeterminado cuando sea necesario
/// Por ejemplo, cuando no te importa la respuesta
Response voidResponse<String>(Response res) => res;

Response<String> stringResponse<String>(Response res) =>
    Response<String>(res.base, res.body);

@ChopperApi(  baseUrl: 'https://api.themoviedb.org/3', )

abstract class ApiService extends ChopperService {

  static ApiService create({ @required String baseUrl, }){

    final client = ChopperClient(
      client: http.IOClient(
          HttpClient()..connectionTimeout = const Duration(seconds: 10)),
      baseUrl: baseUrl,
      services: [
        _$ApiService(),
      ],
      converter: JsonToTypeConverter({
        Movie: (json) => Movie.fromJson(json),
      }),
    );
    return _$ApiService(client);
  } // create

  @FactoryConverter(response: stringResponse)
  @Get(path: '/movie/popular?api_key={apiKey}&language={language}&page={page}')
  Future<Response> getMovies(
      @Query('api_key') String apiKey,
      @Query('language') String language,
      @Query('page') int page);

} // ApiService


