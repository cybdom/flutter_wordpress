class SinglePost {
  final String featuredImage, title, date, url, content, avatarURL, authorName;

  SinglePost({
    this.authorName,
    this.content,
    this.avatarURL,
    this.featuredImage,
    this.title,
    this.date,
    this.url,
  });

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
}
