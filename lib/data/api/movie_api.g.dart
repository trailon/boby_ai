// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_api.dart';

// dart format off

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps,no_leading_underscores_for_local_identifiers,unused_element,unnecessary_string_interpolations,unused_element_parameter,avoid_unused_constructor_parameters,unreachable_from_main

class _MovieApi implements MovieApi {
  _MovieApi(this._dio, {this.baseUrl, this.errorLogger});

  final Dio _dio;

  String? baseUrl;

  final ParseErrorLogger? errorLogger;

  @override
  Future<MoviePagedResponseDtoV1<MovieDetailedDtoV1>> discoverMovies({
    required int page,
    String? withGenres,
    String sortBy = 'popularity.desc',
    bool includeAdult = false,
    bool includeVideo = false,
    String language = 'en-US',
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'page': page,
      r'with_genres': withGenres,
      r'sort_by': sortBy,
      r'include_adult': includeAdult,
      r'include_video': includeVideo,
      r'language': language,
    };
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _options =
        _setStreamType<MoviePagedResponseDtoV1<MovieDetailedDtoV1>>(
          Options(method: 'GET', headers: _headers, extra: _extra)
              .compose(
                _dio.options,
                '/discover/movie',
                queryParameters: queryParameters,
                data: _data,
              )
              .copyWith(
                baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl),
              ),
        );
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late MoviePagedResponseDtoV1<MovieDetailedDtoV1> _value;
    try {
      _value = MoviePagedResponseDtoV1<MovieDetailedDtoV1>.fromJson(
        _result.data!,
        (json) => MovieDetailedDtoV1.fromJson(json as Map<String, dynamic>),
      );
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options, response: _result);
      rethrow;
    }
    return _value;
  }

  @override
  Future<MoviePagedResponseDtoV1<MovieDetailedDtoV1>> searchMovies({
    required String query,
    required int page,
    bool includeAdult = false,
    String language = 'en-US',
  }) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'query': query,
      r'page': page,
      r'include_adult': includeAdult,
      r'language': language,
    };
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _options =
        _setStreamType<MoviePagedResponseDtoV1<MovieDetailedDtoV1>>(
          Options(method: 'GET', headers: _headers, extra: _extra)
              .compose(
                _dio.options,
                '/search/movie',
                queryParameters: queryParameters,
                data: _data,
              )
              .copyWith(
                baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl),
              ),
        );
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late MoviePagedResponseDtoV1<MovieDetailedDtoV1> _value;
    try {
      _value = MoviePagedResponseDtoV1<MovieDetailedDtoV1>.fromJson(
        _result.data!,
        (json) => MovieDetailedDtoV1.fromJson(json as Map<String, dynamic>),
      );
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options, response: _result);
      rethrow;
    }
    return _value;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }

  String _combineBaseUrls(String dioBaseUrl, String? baseUrl) {
    if (baseUrl == null || baseUrl.trim().isEmpty) {
      return dioBaseUrl;
    }

    final url = Uri.parse(baseUrl);

    if (url.isAbsolute) {
      return url.toString();
    }

    return Uri.parse(dioBaseUrl).resolveUri(url).toString();
  }
}

// dart format on
