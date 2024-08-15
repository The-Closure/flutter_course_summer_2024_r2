import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class AnimalModlel {
  String name;
  String avatar;
  String origin;
  String id;
  AnimalModlel({
    required this.name,
    required this.avatar,
    required this.origin,
    required this.id,
  });


  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'avatar': avatar,
      'origin': origin,
      'id': id,
    };
  }

  factory AnimalModlel.fromMap(Map<String, dynamic> map) {
    return AnimalModlel(
      name: map['name'] ,
      avatar: map['avatar'] ,
      origin: map['origin'] ,
      id: map['id'] ,
    );
  }

  String toJson() => json.encode(toMap());

  factory AnimalModlel.fromJson(String source) => AnimalModlel.fromMap(json.decode(source) as Map<String, dynamic>);
}
