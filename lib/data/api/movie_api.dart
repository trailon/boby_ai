import 'package:boby_ai/data/dto/movie_detailed_dto_v1.dart';
import 'package:boby_ai/data/dto/movie_paged_response_dto_v1.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'movie_api.g.dart';

@RestApi()
abstract class MovieApi {
  factory MovieApi(Dio dio) = _MovieApi;

  @GET('/discover/movie')
  Future<MoviePagedResponseDtoV1<MovieDetailedDtoV1>> discoverMovies({
    @Query('page') required int page,
    @Query('with_genres') String? withGenres,
    @Query('sort_by') String sortBy = 'popularity.desc',
    @Query('include_adult') bool includeAdult = false,
    @Query('include_video') bool includeVideo = false,
    @Query('language') String language = 'en-US',
  });

  @GET('/search/movie')
  Future<MoviePagedResponseDtoV1<MovieDetailedDtoV1>> searchMovies({
    @Query('query') required String query,
    @Query('page') required int page,
    @Query('include_adult') bool includeAdult = false,
    @Query('language') String language = 'en-US',
  });
}
