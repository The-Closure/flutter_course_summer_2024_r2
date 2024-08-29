// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class TodoModel {
  final int id;
  final String? title;
  TodoModel({
    required this.id,
    this.title,
  });

  TodoModel copyWith({
    int? id,
    String? title,
  }) {
    return TodoModel(
      id: id ?? this.id,
      title: title ?? this.title,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'title': title,
    };
  }

  factory TodoModel.fromMap(Map<String, dynamic> map) {
    return TodoModel(
      id: map['id'] as int,
      title: map['title'] != null ? map['title'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory TodoModel.fromJson(String source) => TodoModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'TodoModel(id: $id, title: $title)';

  @override
  bool operator ==(covariant TodoModel other) {
    if (identical(this, other)) return true;
  
    return 
      other.id == id &&
      other.title == title;
  }

  @override
  int get hashCode => id.hashCode ^ title.hashCode;
}
