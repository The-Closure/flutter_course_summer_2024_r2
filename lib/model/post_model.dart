// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class PostModel {
  final int id;
  final String body;
  final String title;
  PostModel({
    required this.id,
    required this.body,
    required this.title,
  });

  PostModel copyWith({
    int? id,
    String? body,
    String? title,
  }) {
    return PostModel(
      id: id ?? this.id,
      body: body ?? this.body,
      title: title ?? this.title,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'body': body,
      'title': title,
    };
  }

  factory PostModel.fromMap(Map<String, dynamic> map) {
    return PostModel(
      id: map['id'] as int,
      body: map['body'] as String,
      title: map['title'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory PostModel.fromJson(String source) => PostModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'PostModel(id: $id, body: $body, title: $title)';

  @override
  bool operator ==(covariant PostModel other) {
    if (identical(this, other)) return true;
  
    return 
      other.id == id &&
      other.body == body &&
      other.title == title;
  }

  @override
  int get hashCode => id.hashCode ^ body.hashCode ^ title.hashCode;
}
