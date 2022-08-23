// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'photo.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

photo _$photoFromJson(Map<String, dynamic> json) {
  return _photo.fromJson(json);
}

/// @nodoc
mixin _$photo {
  String get previewURL => throw _privateConstructorUsedError;
  String get tags => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $photoCopyWith<photo> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $photoCopyWith<$Res> {
  factory $photoCopyWith(photo value, $Res Function(photo) then) =
      _$photoCopyWithImpl<$Res>;
  $Res call({String previewURL, String tags});
}

/// @nodoc
class _$photoCopyWithImpl<$Res> implements $photoCopyWith<$Res> {
  _$photoCopyWithImpl(this._value, this._then);

  final photo _value;
  // ignore: unused_field
  final $Res Function(photo) _then;

  @override
  $Res call({
    Object? previewURL = freezed,
    Object? tags = freezed,
  }) {
    return _then(_value.copyWith(
      previewURL: previewURL == freezed
          ? _value.previewURL
          : previewURL // ignore: cast_nullable_to_non_nullable
              as String,
      tags: tags == freezed
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_photoCopyWith<$Res> implements $photoCopyWith<$Res> {
  factory _$$_photoCopyWith(_$_photo value, $Res Function(_$_photo) then) =
      __$$_photoCopyWithImpl<$Res>;
  @override
  $Res call({String previewURL, String tags});
}

/// @nodoc
class __$$_photoCopyWithImpl<$Res> extends _$photoCopyWithImpl<$Res>
    implements _$$_photoCopyWith<$Res> {
  __$$_photoCopyWithImpl(_$_photo _value, $Res Function(_$_photo) _then)
      : super(_value, (v) => _then(v as _$_photo));

  @override
  _$_photo get _value => super._value as _$_photo;

  @override
  $Res call({
    Object? previewURL = freezed,
    Object? tags = freezed,
  }) {
    return _then(_$_photo(
      previewURL: previewURL == freezed
          ? _value.previewURL
          : previewURL // ignore: cast_nullable_to_non_nullable
              as String,
      tags: tags == freezed
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_photo implements _photo {
  const _$_photo({required this.previewURL, required this.tags});

  factory _$_photo.fromJson(Map<String, dynamic> json) =>
      _$$_photoFromJson(json);

  @override
  final String previewURL;
  @override
  final String tags;

  @override
  String toString() {
    return 'photo(previewURL: $previewURL, tags: $tags)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_photo &&
            const DeepCollectionEquality()
                .equals(other.previewURL, previewURL) &&
            const DeepCollectionEquality().equals(other.tags, tags));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(previewURL),
      const DeepCollectionEquality().hash(tags));

  @JsonKey(ignore: true)
  @override
  _$$_photoCopyWith<_$_photo> get copyWith =>
      __$$_photoCopyWithImpl<_$_photo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_photoToJson(
      this,
    );
  }
}

abstract class _photo implements photo {
  const factory _photo(
      {required final String previewURL,
      required final String tags}) = _$_photo;

  factory _photo.fromJson(Map<String, dynamic> json) = _$_photo.fromJson;

  @override
  String get previewURL;
  @override
  String get tags;
  @override
  @JsonKey(ignore: true)
  _$$_photoCopyWith<_$_photo> get copyWith =>
      throw _privateConstructorUsedError;
}
