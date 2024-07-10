import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_application_4/providers/instagram_provider.dart';

class InstagramScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Publicaciones de Instagram'),
      ),
      body: Consumer<InstagramProvider>(
        builder: (context, provider, child) {
          if (provider.posts.isEmpty) {
            return Center(
              child: ElevatedButton(
                onPressed: () {
                  provider.fetchPosts();
                },
                child: Text('Cargar Publicaciones'),
              ),
            );
          }

          return ListView.builder(
            itemCount: provider.posts.length,
            itemBuilder: (context, index) {
              final post = provider.posts[index];
              return ListTile(
                leading: Image.network(post.mediaUrl),
                title: Text(post.username),
                subtitle: Text(post.caption),
                trailing: Text('${post.timestamp}'),
              );
            },
          );
        },
      ),
    );
  }
}
