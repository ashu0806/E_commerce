// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'post_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Posts _$PostsFromJson(Map<String, dynamic> json) {
  return _Posts.fromJson(json);
}

/// @nodoc
mixin _$Posts {
  int get userId => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get body => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PostsCopyWith<Posts> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostsCopyWith<$Res> {
  factory $PostsCopyWith(Posts value, $Res Function(Posts) then) =
      _$PostsCopyWithImpl<$Res>;
  $Res call({int userId, int id, String title, String body});
}

/// @nodoc
class _$PostsCopyWithImpl<$Res> implements $PostsCopyWith<$Res> {
  _$PostsCopyWithImpl(this._value, this._then);

  final Posts _value;
  // ignore: unused_field
  final $Res Function(Posts) _then;

  @override
  $Res call({
    Object? userId = freezed,
    Object? id = freezed,
    Object? title = freezed,
    Object? body = freezed,
  }) {
    return _then(_value.copyWith(
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      body: body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_PostsCopyWith<$Res> implements $PostsCopyWith<$Res> {
  factory _$$_PostsCopyWith(_$_Posts value, $Res Function(_$_Posts) then) =
      __$$_PostsCopyWithImpl<$Res>;
  @override
  $Res call({int userId, int id, String title, String body});
}

/// @nodoc
class __$$_PostsCopyWithImpl<$Res> extends _$PostsCopyWithImpl<$Res>
    implements _$$_PostsCopyWith<$Res> {
  __$$_PostsCopyWithImpl(_$_Posts _value, $Res Function(_$_Posts) _then)
      : super(_value, (v) => _then(v as _$_Posts));

  @override
  _$_Posts get _value => super._value as _$_Posts;

  @override
  $Res call({
    Object? userId = freezed,
    Object? id = freezed,
    Object? title = freezed,
    Object? body = freezed,
  }) {
    return _then(_$_Posts(
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      body: body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Posts implements _Posts {
  const _$_Posts(
      {required this.userId,
      required this.id,
      required this.title,
      required this.body});

  factory _$_Posts.fromJson(Map<String, dynamic> json) =>
      _$$_PostsFromJson(json);

  @override
  final int userId;
  @override
  final int id;
  @override
  final String title;
  @override
  final String body;

  @override
  String toString() {
    return 'Posts(userId: $userId, id: $id, title: $title, body: $body)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Posts &&
            const DeepCollectionEquality().equals(other.userId, userId) &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.body, body));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(userId),
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(body));

  @JsonKey(ignore: true)
  @override
  _$$_PostsCopyWith<_$_Posts> get copyWith =>
      __$$_PostsCopyWithImpl<_$_Posts>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PostsToJson(this);
  }
}

abstract class _Posts implements Posts {
  const factory _Posts(
      {required final int userId,
      required final int id,
      required final String title,
      required final String body}) = _$_Posts;

  factory _Posts.fromJson(Map<String, dynamic> json) = _$_Posts.fromJson;

  @override
  int get userId;
  @override
  int get id;
  @override
  String get title;
  @override
  String get body;
  @override
  @JsonKey(ignore: true)
  _$$_PostsCopyWith<_$_Posts> get copyWith =>
      throw _privateConstructorUsedError;
}
