class SinglePost {
  final String featuredImage, title, date, url, content, avatarURL, authorName;

  factory SinglePost.fromJson(Map<String, dynamic> json) {
    return SinglePost(
      authorName: json['author']['name'],
      avatarURL: json['author']['avatar_URL'],
      content: json['content'],
      date: json['date'],
      featuredImage: json['featured_image'],
      title: json['title'],
      url: json['URL'],
    );
  }

  SinglePost(
      {required this.featuredImage,
      required this.title,
      required this.date,
      required this.url,
      required this.content,
      required this.avatarURL,
      required this.authorName});
}
