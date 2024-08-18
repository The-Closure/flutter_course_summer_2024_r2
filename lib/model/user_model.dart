// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class UserModel {
  int id;
  String firstName;
  String lastName;
  String image;
  String gender;
  String email;
  UserModel({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.image,
    required this.gender,
    required this.email,
  });

  UserModel copyWith({
    int? id,
    String? firstName,
    String? lastName,
    String? image,
    String? gender,
    String? email,
  }) {
    return UserModel(
      id: id ?? this.id,
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName,
      image: image ?? this.image,
      gender: gender ?? this.gender,
      email: email ?? this.email,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'firstName': firstName,
      'lastName': lastName,
      'image': image,
      'gender': gender,
      'email': email,
    };
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      id: map['id'] as int,
      firstName: map['firstName'] as String,
      lastName: map['lastName'] as String,
      image: map['image'] as String,
      gender: map['gender'] as String,
      email: map['email'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory UserModel.fromJson(String source) => UserModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'UserModel(id: $id, firstName: $firstName, lastName: $lastName, image: $image, gender: $gender, email: $email)';
  }

  @override
  bool operator ==(covariant UserModel other) {
    if (identical(this, other)) return true;
  
    return 
      other.id == id &&
      other.firstName == firstName &&
      other.lastName == lastName &&
      other.image == image &&
      other.gender == gender &&
      other.email == email;
  }

  @override
  int get hashCode {
    return id.hashCode ^
      firstName.hashCode ^
      lastName.hashCode ^
      image.hashCode ^
      gender.hashCode ^
      email.hashCode;
  }
}
