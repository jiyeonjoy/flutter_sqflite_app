import 'package:dio/dio.dart';
import 'package:flutter_jab_app/app/common/constants.dart';
import 'package:flutter_jab_app/data/data_sources/remote/apis/search_api.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

final prettyDioLogger = PrettyDioLogger(
  requestHeader: true,
  requestBody: true,
  responseBody: true,
  responseHeader: false,
  error: true,
  compact: true,
  maxWidth: 90,
);

class JaBHttpClient {
  static final JaBHttpClient _instance = JaBHttpClient._internal();
  factory JaBHttpClient() => _instance;
  JaBHttpClient._internal();

  BaseOptions options = BaseOptions(
    connectTimeout:
    AppConstants.HTTP_CONNECT_TIMEOUT * Duration.millisecondsPerSecond,
    sendTimeout:
    AppConstants.HTTP_WRITE_TIMEOUT * Duration.millisecondsPerSecond,
    receiveTimeout:
    AppConstants.HTTP_READ_TIMEOUT * Duration.millisecondsPerSecond,
    headers: {
      'Authorization': 'KakaoAK ${AppConstants.REST_API_KEY}'
    },
  );

  Dio? _dio;
  Dio get dio {
    _dio ??= Dio(options)..interceptors.addAll([
      prettyDioLogger,
    ]);

    return _dio!;
  }

  SearchApi get searchApi => SearchApi(
    dio,
    baseUrl: 'https://dapi.kakao.com'
  );
}
