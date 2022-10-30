// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'search_image_meta_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SearchImageMetaDto _$SearchImageMetaDtoFromJson(Map<String, dynamic> json) {
  return _SearchImageMetaDto.fromJson(json);
}

/// @nodoc
mixin _$SearchImageMetaDto {
  bool get is_end => throw _privateConstructorUsedError;
  int get pageable_count => throw _privateConstructorUsedError;
  int get total_count => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchImageMetaDtoCopyWith<SearchImageMetaDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchImageMetaDtoCopyWith<$Res> {
  factory $SearchImageMetaDtoCopyWith(
          SearchImageMetaDto value, $Res Function(SearchImageMetaDto) then) =
      _$SearchImageMetaDtoCopyWithImpl<$Res, SearchImageMetaDto>;
  @useResult
  $Res call({bool is_end, int pageable_count, int total_count});
}

/// @nodoc
class _$SearchImageMetaDtoCopyWithImpl<$Res, $Val extends SearchImageMetaDto>
    implements $SearchImageMetaDtoCopyWith<$Res> {
  _$SearchImageMetaDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? is_end = null,
    Object? pageable_count = null,
    Object? total_count = null,
  }) {
    return _then(_value.copyWith(
      is_end: null == is_end
          ? _value.is_end
          : is_end // ignore: cast_nullable_to_non_nullable
              as bool,
      pageable_count: null == pageable_count
          ? _value.pageable_count
          : pageable_count // ignore: cast_nullable_to_non_nullable
              as int,
      total_count: null == total_count
          ? _value.total_count
          : total_count // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SearchImageMetaDtoCopyWith<$Res>
    implements $SearchImageMetaDtoCopyWith<$Res> {
  factory _$$_SearchImageMetaDtoCopyWith(_$_SearchImageMetaDto value,
          $Res Function(_$_SearchImageMetaDto) then) =
      __$$_SearchImageMetaDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool is_end, int pageable_count, int total_count});
}

/// @nodoc
class __$$_SearchImageMetaDtoCopyWithImpl<$Res>
    extends _$SearchImageMetaDtoCopyWithImpl<$Res, _$_SearchImageMetaDto>
    implements _$$_SearchImageMetaDtoCopyWith<$Res> {
  __$$_SearchImageMetaDtoCopyWithImpl(
      _$_SearchImageMetaDto _value, $Res Function(_$_SearchImageMetaDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? is_end = null,
    Object? pageable_count = null,
    Object? total_count = null,
  }) {
    return _then(_$_SearchImageMetaDto(
      is_end: null == is_end
          ? _value.is_end
          : is_end // ignore: cast_nullable_to_non_nullable
              as bool,
      pageable_count: null == pageable_count
          ? _value.pageable_count
          : pageable_count // ignore: cast_nullable_to_non_nullable
              as int,
      total_count: null == total_count
          ? _value.total_count
          : total_count // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SearchImageMetaDto extends _SearchImageMetaDto {
  _$_SearchImageMetaDto(
      {this.is_end = false, this.pageable_count = 0, this.total_count = 0})
      : super._();

  factory _$_SearchImageMetaDto.fromJson(Map<String, dynamic> json) =>
      _$$_SearchImageMetaDtoFromJson(json);

  @override
  @JsonKey()
  final bool is_end;
  @override
  @JsonKey()
  final int pageable_count;
  @override
  @JsonKey()
  final int total_count;

  @override
  String toString() {
    return 'SearchImageMetaDto(is_end: $is_end, pageable_count: $pageable_count, total_count: $total_count)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchImageMetaDto &&
            (identical(other.is_end, is_end) || other.is_end == is_end) &&
            (identical(other.pageable_count, pageable_count) ||
                other.pageable_count == pageable_count) &&
            (identical(other.total_count, total_count) ||
                other.total_count == total_count));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, is_end, pageable_count, total_count);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SearchImageMetaDtoCopyWith<_$_SearchImageMetaDto> get copyWith =>
      __$$_SearchImageMetaDtoCopyWithImpl<_$_SearchImageMetaDto>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SearchImageMetaDtoToJson(
      this,
    );
  }
}

abstract class _SearchImageMetaDto extends SearchImageMetaDto {
  factory _SearchImageMetaDto(
      {final bool is_end,
      final int pageable_count,
      final int total_count}) = _$_SearchImageMetaDto;
  _SearchImageMetaDto._() : super._();

  factory _SearchImageMetaDto.fromJson(Map<String, dynamic> json) =
      _$_SearchImageMetaDto.fromJson;

  @override
  bool get is_end;
  @override
  int get pageable_count;
  @override
  int get total_count;
  @override
  @JsonKey(ignore: true)
  _$$_SearchImageMetaDtoCopyWith<_$_SearchImageMetaDto> get copyWith =>
      throw _privateConstructorUsedError;
}
