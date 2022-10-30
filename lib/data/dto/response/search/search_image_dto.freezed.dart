// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'search_image_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SearchImageDto _$SearchImageDtoFromJson(Map<String, dynamic> json) {
  return _SearchImageDto.fromJson(json);
}

/// @nodoc
mixin _$SearchImageDto {
  List<SearchImageDataDto>? get documents => throw _privateConstructorUsedError;
  SearchImageMetaDto? get meta => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchImageDtoCopyWith<SearchImageDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchImageDtoCopyWith<$Res> {
  factory $SearchImageDtoCopyWith(
          SearchImageDto value, $Res Function(SearchImageDto) then) =
      _$SearchImageDtoCopyWithImpl<$Res, SearchImageDto>;
  @useResult
  $Res call({List<SearchImageDataDto>? documents, SearchImageMetaDto? meta});

  $SearchImageMetaDtoCopyWith<$Res>? get meta;
}

/// @nodoc
class _$SearchImageDtoCopyWithImpl<$Res, $Val extends SearchImageDto>
    implements $SearchImageDtoCopyWith<$Res> {
  _$SearchImageDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? documents = freezed,
    Object? meta = freezed,
  }) {
    return _then(_value.copyWith(
      documents: freezed == documents
          ? _value.documents
          : documents // ignore: cast_nullable_to_non_nullable
              as List<SearchImageDataDto>?,
      meta: freezed == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as SearchImageMetaDto?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SearchImageMetaDtoCopyWith<$Res>? get meta {
    if (_value.meta == null) {
      return null;
    }

    return $SearchImageMetaDtoCopyWith<$Res>(_value.meta!, (value) {
      return _then(_value.copyWith(meta: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_SearchImageDtoCopyWith<$Res>
    implements $SearchImageDtoCopyWith<$Res> {
  factory _$$_SearchImageDtoCopyWith(
          _$_SearchImageDto value, $Res Function(_$_SearchImageDto) then) =
      __$$_SearchImageDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<SearchImageDataDto>? documents, SearchImageMetaDto? meta});

  @override
  $SearchImageMetaDtoCopyWith<$Res>? get meta;
}

/// @nodoc
class __$$_SearchImageDtoCopyWithImpl<$Res>
    extends _$SearchImageDtoCopyWithImpl<$Res, _$_SearchImageDto>
    implements _$$_SearchImageDtoCopyWith<$Res> {
  __$$_SearchImageDtoCopyWithImpl(
      _$_SearchImageDto _value, $Res Function(_$_SearchImageDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? documents = freezed,
    Object? meta = freezed,
  }) {
    return _then(_$_SearchImageDto(
      documents: freezed == documents
          ? _value._documents
          : documents // ignore: cast_nullable_to_non_nullable
              as List<SearchImageDataDto>?,
      meta: freezed == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as SearchImageMetaDto?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SearchImageDto extends _SearchImageDto {
  _$_SearchImageDto({final List<SearchImageDataDto>? documents, this.meta})
      : _documents = documents,
        super._();

  factory _$_SearchImageDto.fromJson(Map<String, dynamic> json) =>
      _$$_SearchImageDtoFromJson(json);

  final List<SearchImageDataDto>? _documents;
  @override
  List<SearchImageDataDto>? get documents {
    final value = _documents;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final SearchImageMetaDto? meta;

  @override
  String toString() {
    return 'SearchImageDto(documents: $documents, meta: $meta)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchImageDto &&
            const DeepCollectionEquality()
                .equals(other._documents, _documents) &&
            (identical(other.meta, meta) || other.meta == meta));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_documents), meta);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SearchImageDtoCopyWith<_$_SearchImageDto> get copyWith =>
      __$$_SearchImageDtoCopyWithImpl<_$_SearchImageDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SearchImageDtoToJson(
      this,
    );
  }
}

abstract class _SearchImageDto extends SearchImageDto {
  factory _SearchImageDto(
      {final List<SearchImageDataDto>? documents,
      final SearchImageMetaDto? meta}) = _$_SearchImageDto;
  _SearchImageDto._() : super._();

  factory _SearchImageDto.fromJson(Map<String, dynamic> json) =
      _$_SearchImageDto.fromJson;

  @override
  List<SearchImageDataDto>? get documents;
  @override
  SearchImageMetaDto? get meta;
  @override
  @JsonKey(ignore: true)
  _$$_SearchImageDtoCopyWith<_$_SearchImageDto> get copyWith =>
      throw _privateConstructorUsedError;
}
