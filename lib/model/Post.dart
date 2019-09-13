class Post{
  final int userId;
  final int id;
  final String title;
  //final String body;
  final String thumbnailUrl;

 // Post({this.userId, this.id, this.title, this.body, this.thumbnailUrl});

  Post({this.userId, this.id, this.title, this.thumbnailUrl});

  factory Post.fromJson(Map<String, dynamic> json) {
    return new Post(
      userId: json['userId'],
      id: json['id'],
      title: json['title'],
      thumbnailUrl: json['thumbnailUrl'],
     // body: json['body'],
    );
  }
}