// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_image_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SearchImageDto _$$_SearchImageDtoFromJson(Map<String, dynamic> json) =>
    _$_SearchImageDto(
      documents: (json['documents'] as List<dynamic>?)
          ?.map((e) => SearchImageDataDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      meta: json['meta'] == null
          ? null
          : SearchImageMetaDto.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_SearchImageDtoToJson(_$_SearchImageDto instance) =>
    <String, dynamic>{
      'documents': instance.documents,
      'meta': instance.meta,
    };
