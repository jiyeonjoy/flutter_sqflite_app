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
  );
}
