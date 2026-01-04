import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../dto/genre_list_response_dto.dart';
import '../dto/movie_list_response_dto_v1.dart';

part 'tmdb_api.g.dart';

@RestApi()
abstract class TmdbApi {
  factory TmdbApi(Dio dio, {String baseUrl}) = _TmdbApi;

  @GET('/movie/popular')
  Future<MovieListResponseDtoV1> getPopularMovies(@Query('page') int page);

  @GET('/genre/movie/list')
  Future<GenreListResponseDto> getGenres();
}
