import 'package:e_commerce/dashboard/presentation/pages/home/domain/post_model.dart';

abstract class AbRemoteService {
  Future<List<Posts>> getAllPosts();
}
