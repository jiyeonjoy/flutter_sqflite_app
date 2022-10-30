import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_image_data_dto.freezed.dart';
part 'search_image_data_dto.g.dart';

// ignore_for_file: non_constant_identifier_names
@freezed
class SearchImageDataDto with _$SearchImageDataDto {
  const SearchImageDataDto._();
  factory SearchImageDataDto({
    @Default('') String collection,
    @Default('') String datetime,
    @Default('') String display_sitename,
    @Default('') String doc_url,
    @Default('') String image_url,
    @Default('') String thumbnail_url,
    @Default(0) int height,
    @Default(0) int width,
  }) = _SearchImageDataDto;

  factory SearchImageDataDto.fromJson(Map<String, dynamic> json) =>
      _$SearchImageDataDtoFromJson(json);
}
