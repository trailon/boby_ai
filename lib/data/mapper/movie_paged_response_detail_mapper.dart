import 'package:boby_ai/data/dto/movie_detailed_dto_v1.dart';
import 'package:boby_ai/data/dto/movie_detailed_dto_v2.dart';
import 'package:boby_ai/data/dto/movie_paged_response_dto_v1.dart';
import 'package:boby_ai/data/dto/movie_paged_response_dto_v2.dart';
import 'package:boby_ai/domain/entity/movie_detail.dart';

extension MoviePagedResponseDetailMapper on MoviePagedResponseDtoV1<MovieDetailedDtoV1> {
  MoviePagedResponseDtoV1<MovieDetail> toDomain() => MoviePagedResponseDtoV1<MovieDetail>(
    page: page,
    totalPages: totalPages,
    totalResults: totalResults,
    results: results.map((dto) => dto.toDomain()).toList(),
  );
}

extension MoviePagedResponseDetailDtoV2Mapper on MoviePagedResponseDtoV2<MovieDetailedDtoV2> {
  MoviePagedResponseDtoV2<MovieDetail> toDomain() => MoviePagedResponseDtoV2<MovieDetail>(
    currentPage: currentPage,
    pageCount: pageCount,
    datas: datas.map((dto) => dto.toDomain()).toList(),
  );
}
