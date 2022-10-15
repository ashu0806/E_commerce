import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:dio/dio.dart';
import 'package:e_commerce/dashboard/presentation/pages/home/domain/ab_remote_service.dart';
import 'package:e_commerce/dashboard/presentation/pages/home/domain/post_model.dart';

class PostRemoteService implements AbRemoteService {
  final Dio dio;

  PostRemoteService(this.dio);
  @override
  Future<List<Posts>> getAllPosts() async {
    List<Posts> posts = [];
    var response =
        await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));

    List<dynamic> values = [];
    values = jsonDecode(response.body);
    if (values.isNotEmpty) {
      for (int i = 0; i < values.length; i++) {
        if (values[i] != null) {
          Map<String, dynamic> map = values[i];
          posts.add(Posts.fromJson(map));
        }
      }
    }

    return posts;
    // var data = json.decode(response.body);
    // var posts = Posts.fromJson(data);
    // return data;
  }
}
