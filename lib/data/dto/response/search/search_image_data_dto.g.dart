// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_image_data_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SearchImageDataDto _$$_SearchImageDataDtoFromJson(
        Map<String, dynamic> json) =>
    _$_SearchImageDataDto(
      collection: json['collection'] as String? ?? '',
      datetime: json['datetime'] as String? ?? '',
      display_sitename: json['display_sitename'] as String? ?? '',
      doc_url: json['doc_url'] as String? ?? '',
      image_url: json['image_url'] as String? ?? '',
      thumbnail_url: json['thumbnail_url'] as String? ?? '',
      height: json['height'] as int? ?? 0,
      width: json['width'] as int? ?? 0,
    );

Map<String, dynamic> _$$_SearchImageDataDtoToJson(
        _$_SearchImageDataDto instance) =>
    <String, dynamic>{
      'collection': instance.collection,
      'datetime': instance.datetime,
      'display_sitename': instance.display_sitename,
      'doc_url': instance.doc_url,
      'image_url': instance.image_url,
      'thumbnail_url': instance.thumbnail_url,
      'height': instance.height,
      'width': instance.width,
    };
