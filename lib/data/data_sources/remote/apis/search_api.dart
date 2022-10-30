import 'package:dio/dio.dart';
import 'package:flutter_jab_app/data/dto/response/search/search_image_dto.dart';
import 'package:retrofit/retrofit.dart';

part 'search_api.g.dart';

@RestApi()
abstract class SearchApi {
  factory SearchApi(Dio dio, {String baseUrl}) = _SearchApi;

  @GET('/v2/search/image')
  Future<SearchImageDto> getImageList(
      @Query('query') String query,
      {@Query('sort') String? sort, ///  accuracy(정확도순) 또는 recency(최신순), 기본 값 accuracy
        @Query('page') int? page, /// 1 - 50 , 기본 값 1
        @Query('size') int? size,} /// 1 - 80 , 가본 값 80);
  );
}
