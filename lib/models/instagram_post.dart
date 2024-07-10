class InstagramPost {
  final String id;
  final String caption;
  final String mediaUrl;
  final String username;
  final String timestamp;

  InstagramPost({
    required this.id,
    required this.caption,
    required this.mediaUrl,
    required this.username,
    required this.timestamp,
  });

  factory InstagramPost.fromJson(Map<String, dynamic> json) {
    return InstagramPost(
      id: json['id'],
      caption: json['caption'] ?? '',
      mediaUrl: json['media_url'],
      username: json['username'],
      timestamp: json['timestamp'],
    );
  }
}
