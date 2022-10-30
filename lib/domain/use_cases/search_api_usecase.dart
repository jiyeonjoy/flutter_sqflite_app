import 'package:flutter_jab_app/data/data_sources/remote/apis/api_result.dart';
import 'package:flutter_jab_app/data/dto/response/search/search_image_dto.dart';
import 'package:flutter_jab_app/domain/repositories/search_api_repository.dart';

class SearchApiUseCase {
  final SearchApiRepository repository;

  SearchApiUseCase(this.repository);

  Future<ApiResult<SearchImageDto>> getImageList(String searchText) {
    return repository.getImageList(searchText);
  }
}
