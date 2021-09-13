class LocalData {
  final String name;
  final String url;
  final String message;
  final String? story;
  final String? post;
  final String? post_image;

  LocalData({
    required this.name,
    required this.url,
    required this.message,
    this.story,
    this.post,
    this.post_image,
  });
}
