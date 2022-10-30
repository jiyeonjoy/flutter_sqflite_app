import 'package:flutter_jab_app/data/data_sources/remote/apis/api_errors.dart';
import 'package:flutter_jab_app/data/data_sources/remote/apis/api_result.dart';
import 'package:flutter_jab_app/data/data_sources/remote/http_client.dart';
import 'package:flutter_jab_app/data/dto/response/search/search_image_dto.dart';
import 'package:flutter_jab_app/domain/repositories/search_api_repository.dart';

class SearchApiRepositoryImpl implements SearchApiRepository {
  @override
  Future<ApiResult<SearchImageDto>> getImageList(
    String searchText, {
    String? sort,
    int? page,
    int? size,
  }) async {
    try {
      var response = await JaBHttpClient().searchApi.getImageList(
        searchText,
        sort: sort,
        page: page,
        size: size,
      );

      return ApiResult.success(data: response);
    } catch (e) {
      return ApiResult.failure(error: transformToErrorResDtoWithErrorHandle(e));
    }
  }
}
