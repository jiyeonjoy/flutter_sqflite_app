import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_image_meta_dto.freezed.dart';
part 'search_image_meta_dto.g.dart';

// ignore_for_file: non_constant_identifier_names
@freezed
class SearchImageMetaDto with _$SearchImageMetaDto {
  const SearchImageMetaDto._();
  factory SearchImageMetaDto({
    @Default(false) bool is_end,
    @Default(0) int pageable_count,
    @Default(0) int total_count,
  }) = _SearchImageMetaDto;

  factory SearchImageMetaDto.fromJson(Map<String, dynamic> json) =>
      _$SearchImageMetaDtoFromJson(json);
}