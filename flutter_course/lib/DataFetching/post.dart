// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Post {
  final int id;
  final String slug;
  final String url;
  final String title;
  final String content;
  final String imageUrl;
  final String thumbnail;
  final String status;
  final String category;
  final String publishedAt;
  final String updatedAt;
  final int userId;
  Post({
    this.id = 0,
    this.slug = '',
    this.url = '',
    this.title = '',
    this.content = '',
    this.imageUrl = '',
    this.thumbnail = '',
    this.status = '',
    this.category = '',
    this.publishedAt = '',
    this.updatedAt = '',
    this.userId = 0,
  });

  Post copyWith({
    int? id,
    String? slug,
    String? url,
    String? title,
    String? content,
    String? imageUrl,
    String? thumbnail,
    String? status,
    String? category,
    String? publishedAt,
    String? updatedAt,
    int? userId,
  }) {
    return Post(
      id: id ?? this.id,
      slug: slug ?? this.slug,
      url: url ?? this.url,
      title: title ?? this.title,
      content: content ?? this.content,
      imageUrl: imageUrl ?? this.imageUrl,
      thumbnail: thumbnail ?? this.thumbnail,
      status: status ?? this.status,
      category: category ?? this.category,
      publishedAt: publishedAt ?? this.publishedAt,
      updatedAt: updatedAt ?? this.updatedAt,
      userId: userId ?? this.userId,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'slug': slug,
      'url': url,
      'title': title,
      'content': content,
      'image': imageUrl,
      'thumbnail': thumbnail,
      'status': status,
      'category': category,
      'publishedAt': publishedAt,
      'updatedAt': updatedAt,
      'userId': userId,
    };
  }

  factory Post.fromMap(Map<String, dynamic> map) {
    return Post(
      id: map['id'] as int,
      slug: map['slug'] as String,
      url: map['url'] as String,
      title: map['title'] as String,
      content: map['content'] as String,
      imageUrl: map['image'] as String,
      thumbnail: map['thumbnail'] as String,
      status: map['status'] as String,
      category: map['category'] as String,
      publishedAt: map['publishedAt'] as String,
      updatedAt: map['updatedAt'] as String,
      userId: map['userId'] as int,
    );
  }

  String toJson() => json.encode(toMap());

  factory Post.fromJson(String source) => Post.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Post(id: $id, slug: $slug, url: $url, title: $title, content: $content, imageUrl: $imageUrl, thumbnail: $thumbnail, status: $status, category: $category, publishedAt: $publishedAt, updatedAt: $updatedAt, userId: $userId)';
  }

  @override
  bool operator ==(covariant Post other) {
    if (identical(this, other)) return true;
  
    return 
      other.id == id &&
      other.slug == slug &&
      other.url == url &&
      other.title == title &&
      other.content == content &&
      other.imageUrl == imageUrl &&
      other.thumbnail == thumbnail &&
      other.status == status &&
      other.category == category &&
      other.publishedAt == publishedAt &&
      other.updatedAt == updatedAt &&
      other.userId == userId;
  }

  @override
  int get hashCode {
    return id.hashCode ^
      slug.hashCode ^
      url.hashCode ^
      title.hashCode ^
      content.hashCode ^
      imageUrl.hashCode ^
      thumbnail.hashCode ^
      status.hashCode ^
      category.hashCode ^
      publishedAt.hashCode ^
      updatedAt.hashCode ^
      userId.hashCode;
  }
}
