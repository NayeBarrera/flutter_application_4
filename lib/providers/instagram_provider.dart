import 'package:flutter/material.dart';
import 'package:flutter_application_4/services/instagram_service.dart';
import 'package:flutter_application_4/models/instagram_post.dart';

class InstagramProvider with ChangeNotifier {
  List<InstagramPost> _posts = [];

  List<InstagramPost> get posts => _posts;

  Future<void> fetchPosts() async {
    try {
      _posts = await ApiService.fetchInstagramPosts();
      notifyListeners();
    } catch (error) {
      print('Error fetching posts: $error');
    }
  }
}
