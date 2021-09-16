class LocalData {
  final String name;
  final String url;
  final String message;
  final String? story;
  final String? post;
  final String? post_image;
  final String? two_post_image;
  final String? three_post_image;
  final String? four_post_image;
  final String? five_post_image;
  final String? date;
  final String? like_count;
  final String? comment_count;
  final String? share_count;
  final String? first_rect;
  final String? second_rect;
  final String? thirty_rect;

  LocalData({
    required this.name,
    required this.url,
    required this.message,
    this.story,
    this.post,
    this.post_image,
    this.two_post_image,
    this.three_post_image,
    this.four_post_image,
    this.five_post_image,
    this.date,
    this.like_count,
    this.comment_count,
    this.share_count,
    this.first_rect,
    this.second_rect,
    this.thirty_rect,
  });
}
