import 'package:dio/dio.dart';
import 'package:flutter_jab_app/app/common/constants.dart';
import 'package:flutter_jab_app/data/data_sources/remote/apis/search_api.dart';

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
    _dio ??= Dio(options);

    return _dio!;
  }

  SearchApi get searchApi => SearchApi(
    dio,
    baseUrl: 'https://dapi.kakao.com'
  );
}
