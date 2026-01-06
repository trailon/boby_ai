import 'package:boby_ai/data/dto/movie_detailed_dto_v1.dart';
import 'package:boby_ai/data/dto/movie_paged_response_dto_v1.dart';
import 'package:boby_ai/domain/entity/movie_detail.dart';

extension MoviePagedResponseDetailMapper on MoviePagedResponseDtoV1<MovieDetailedDtoV1> {
  MoviePagedResponseDtoV1<MovieDetail> toDomain() => MoviePagedResponseDtoV1<MovieDetail>(
        page: page,
        totalPages: totalPages,
        totalResults: totalResults,
        results: results.map((dto) => dto.toDomain()).toList(),
      );
}