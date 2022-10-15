import 'package:freezed_annotation/freezed_annotation.dart';

part 'post_state.freezed.dart';

@freezed
class PostState with _$PostState {
  const PostState._();
  const factory PostState.initial() = _Initial;
  const factory PostState.success() = _Success;
  const factory PostState.failure() = _Failure;
}
