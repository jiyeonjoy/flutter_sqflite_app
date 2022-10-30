import 'package:flutter_jab_app/data/dto/response/search/search_image_data_dto.dart';
import 'package:flutter_jab_app/data/dto/response/search/search_image_meta_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_image_dto.freezed.dart';
part 'search_image_dto.g.dart';

@freezed
class SearchImageDto with _$SearchImageDto {
  const SearchImageDto._();
  factory SearchImageDto({
    List<SearchImageDataDto>? documents,
    SearchImageMetaDto?  meta,
  }) = _SearchImageDto;

  factory SearchImageDto.fromJson(Map<String, dynamic> json) =>
      _$SearchImageDtoFromJson(json);
}
