import 'package:flutter_jab_app/data/data_sources/remote/apis/api_result.dart';
import 'package:flutter_jab_app/data/dto/response/search/search_image_dto.dart';

abstract class SearchApiRepository {
  Future<ApiResult<SearchImageDto>> getImageList(String searchText);
}
