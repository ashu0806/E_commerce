import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'post_model.freezed.dart';
part 'post_model.g.dart';

List<Posts> postsFromJson(String str) =>
    List<Posts>.from(json.decode(str).map((x) => Posts.fromJson(x)));

String postsToJson(List<Posts> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

@freezed
abstract class Posts with _$Posts {
  const factory Posts({
    required int userId,
    required int id,
    required String title,
    required String body,
  }) = _Posts;

  factory Posts.fromJson(Map<String, dynamic> json) => _$PostsFromJson(json);
}
