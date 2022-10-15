import 'package:dio/dio.dart';
import 'package:e_commerce/dashboard/presentation/pages/home/domain/post_model.dart';
import 'package:e_commerce/dashboard/presentation/pages/home/infra/post_remote_service.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final dioProvider = Provider<Dio>((ref) {
  return Dio();
});

final postRemoteServiceProvider = Provider((ref) {
  return PostRemoteService(ref.watch(dioProvider));
});

final getPostsFutureProvider = FutureProvider<List<Posts>>((ref) async {
  final allPosts = ref.read(postRemoteServiceProvider).getAllPosts();
  return await allPosts;
});
