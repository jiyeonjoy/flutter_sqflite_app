// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'search_image_data_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SearchImageDataDto _$SearchImageDataDtoFromJson(Map<String, dynamic> json) {
  return _SearchImageDataDto.fromJson(json);
}

/// @nodoc
mixin _$SearchImageDataDto {
  String get collection => throw _privateConstructorUsedError;
  String get datetime => throw _privateConstructorUsedError;
  String get display_sitename => throw _privateConstructorUsedError;
  String get doc_url => throw _privateConstructorUsedError;
  String get image_url => throw _privateConstructorUsedError;
  String get thumbnail_url => throw _privateConstructorUsedError;
  int get height => throw _privateConstructorUsedError;
  int get width => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchImageDataDtoCopyWith<SearchImageDataDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchImageDataDtoCopyWith<$Res> {
  factory $SearchImageDataDtoCopyWith(
          SearchImageDataDto value, $Res Function(SearchImageDataDto) then) =
      _$SearchImageDataDtoCopyWithImpl<$Res, SearchImageDataDto>;
  @useResult
  $Res call(
      {String collection,
      String datetime,
      String display_sitename,
      String doc_url,
      String image_url,
      String thumbnail_url,
      int height,
      int width});
}

/// @nodoc
class _$SearchImageDataDtoCopyWithImpl<$Res, $Val extends SearchImageDataDto>
    implements $SearchImageDataDtoCopyWith<$Res> {
  _$SearchImageDataDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? collection = null,
    Object? datetime = null,
    Object? display_sitename = null,
    Object? doc_url = null,
    Object? image_url = null,
    Object? thumbnail_url = null,
    Object? height = null,
    Object? width = null,
  }) {
    return _then(_value.copyWith(
      collection: null == collection
          ? _value.collection
          : collection // ignore: cast_nullable_to_non_nullable
              as String,
      datetime: null == datetime
          ? _value.datetime
          : datetime // ignore: cast_nullable_to_non_nullable
              as String,
      display_sitename: null == display_sitename
          ? _value.display_sitename
          : display_sitename // ignore: cast_nullable_to_non_nullable
              as String,
      doc_url: null == doc_url
          ? _value.doc_url
          : doc_url // ignore: cast_nullable_to_non_nullable
              as String,
      image_url: null == image_url
          ? _value.image_url
          : image_url // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnail_url: null == thumbnail_url
          ? _value.thumbnail_url
          : thumbnail_url // ignore: cast_nullable_to_non_nullable
              as String,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      width: null == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SearchImageDataDtoCopyWith<$Res>
    implements $SearchImageDataDtoCopyWith<$Res> {
  factory _$$_SearchImageDataDtoCopyWith(_$_SearchImageDataDto value,
          $Res Function(_$_SearchImageDataDto) then) =
      __$$_SearchImageDataDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String collection,
      String datetime,
      String display_sitename,
      String doc_url,
      String image_url,
      String thumbnail_url,
      int height,
      int width});
}

/// @nodoc
class __$$_SearchImageDataDtoCopyWithImpl<$Res>
    extends _$SearchImageDataDtoCopyWithImpl<$Res, _$_SearchImageDataDto>
    implements _$$_SearchImageDataDtoCopyWith<$Res> {
  __$$_SearchImageDataDtoCopyWithImpl(
      _$_SearchImageDataDto _value, $Res Function(_$_SearchImageDataDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? collection = null,
    Object? datetime = null,
    Object? display_sitename = null,
    Object? doc_url = null,
    Object? image_url = null,
    Object? thumbnail_url = null,
    Object? height = null,
    Object? width = null,
  }) {
    return _then(_$_SearchImageDataDto(
      collection: null == collection
          ? _value.collection
          : collection // ignore: cast_nullable_to_non_nullable
              as String,
      datetime: null == datetime
          ? _value.datetime
          : datetime // ignore: cast_nullable_to_non_nullable
              as String,
      display_sitename: null == display_sitename
          ? _value.display_sitename
          : display_sitename // ignore: cast_nullable_to_non_nullable
              as String,
      doc_url: null == doc_url
          ? _value.doc_url
          : doc_url // ignore: cast_nullable_to_non_nullable
              as String,
      image_url: null == image_url
          ? _value.image_url
          : image_url // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnail_url: null == thumbnail_url
          ? _value.thumbnail_url
          : thumbnail_url // ignore: cast_nullable_to_non_nullable
              as String,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      width: null == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SearchImageDataDto extends _SearchImageDataDto {
  _$_SearchImageDataDto(
      {this.collection = '',
      this.datetime = '',
      this.display_sitename = '',
      this.doc_url = '',
      this.image_url = '',
      this.thumbnail_url = '',
      this.height = 0,
      this.width = 0})
      : super._();

  factory _$_SearchImageDataDto.fromJson(Map<String, dynamic> json) =>
      _$$_SearchImageDataDtoFromJson(json);

  @override
  @JsonKey()
  final String collection;
  @override
  @JsonKey()
  final String datetime;
  @override
  @JsonKey()
  final String display_sitename;
  @override
  @JsonKey()
  final String doc_url;
  @override
  @JsonKey()
  final String image_url;
  @override
  @JsonKey()
  final String thumbnail_url;
  @override
  @JsonKey()
  final int height;
  @override
  @JsonKey()
  final int width;

  @override
  String toString() {
    return 'SearchImageDataDto(collection: $collection, datetime: $datetime, display_sitename: $display_sitename, doc_url: $doc_url, image_url: $image_url, thumbnail_url: $thumbnail_url, height: $height, width: $width)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchImageDataDto &&
            (identical(other.collection, collection) ||
                other.collection == collection) &&
            (identical(other.datetime, datetime) ||
                other.datetime == datetime) &&
            (identical(other.display_sitename, display_sitename) ||
                other.display_sitename == display_sitename) &&
            (identical(other.doc_url, doc_url) || other.doc_url == doc_url) &&
            (identical(other.image_url, image_url) ||
                other.image_url == image_url) &&
            (identical(other.thumbnail_url, thumbnail_url) ||
                other.thumbnail_url == thumbnail_url) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.width, width) || other.width == width));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, collection, datetime,
      display_sitename, doc_url, image_url, thumbnail_url, height, width);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SearchImageDataDtoCopyWith<_$_SearchImageDataDto> get copyWith =>
      __$$_SearchImageDataDtoCopyWithImpl<_$_SearchImageDataDto>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SearchImageDataDtoToJson(
      this,
    );
  }
}

abstract class _SearchImageDataDto extends SearchImageDataDto {
  factory _SearchImageDataDto(
      {final String collection,
      final String datetime,
      final String display_sitename,
      final String doc_url,
      final String image_url,
      final String thumbnail_url,
      final int height,
      final int width}) = _$_SearchImageDataDto;
  _SearchImageDataDto._() : super._();

  factory _SearchImageDataDto.fromJson(Map<String, dynamic> json) =
      _$_SearchImageDataDto.fromJson;

  @override
  String get collection;
  @override
  String get datetime;
  @override
  String get display_sitename;
  @override
  String get doc_url;
  @override
  String get image_url;
  @override
  String get thumbnail_url;
  @override
  int get height;
  @override
  int get width;
  @override
  @JsonKey(ignore: true)
  _$$_SearchImageDataDtoCopyWith<_$_SearchImageDataDto> get copyWith =>
      throw _privateConstructorUsedError;
}
