// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_image_meta_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SearchImageMetaDto _$$_SearchImageMetaDtoFromJson(
        Map<String, dynamic> json) =>
    _$_SearchImageMetaDto(
      is_end: json['is_end'] as bool? ?? false,
      pageable_count: json['pageable_count'] as int? ?? 0,
      total_count: json['total_count'] as int? ?? 0,
    );

Map<String, dynamic> _$$_SearchImageMetaDtoToJson(
        _$_SearchImageMetaDto instance) =>
    <String, dynamic>{
      'is_end': instance.is_end,
      'pageable_count': instance.pageable_count,
      'total_count': instance.total_count,
    };
