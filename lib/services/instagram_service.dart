import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter_application_4/models/instagram_post.dart';

class ApiService {
  static const String baseUrl = 'https://instagram.com';
  static const String accessToken = 'YOUR_ACCESS_TOKEN';

  static Future<List<InstagramPost>> fetchInstagramPosts() async {
    final response = await http.get(
      Uri.parse('$baseUrl/me/media?fields=id,caption,media_url,username,timestamp&access_token=$accessToken'),
    );

    if (response.statusCode == 200) {
      final List<dynamic> data = jsonDecode(response.body)['data'];
      return data.map((json) => InstagramPost.fromJson(json)).toList();
    } else {
      throw Exception('Error al cargar publicaciones de Instagram');
    }
  }
}
