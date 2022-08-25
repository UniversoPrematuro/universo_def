// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class UserModel {
  
  String? name;
  
  String? email;

  String? pass;

  UserModel({
    this.name,
    this.email,
    this.pass,
  });

  UserModel copyWith({
    String? name,
    String? email,
    String? pass,
  }) {
    return UserModel(
      name: name ?? this.name,
      email: email ?? this.email,
      pass: pass ?? this.pass,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'email': email,
      'pass': pass,
    };
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      name: map['name'],
      email: map['email'],
      pass: map['pass'],
    );
  }

  String toJson() => json.encode(toMap());

  factory UserModel.fromJson(String source) => UserModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'UserModel(name: $name, email: $email, pass: $pass)';

  @override
  bool operator ==(covariant UserModel other) {
    if (identical(this, other)) return true;
  
    return 
      other.name == name &&
      other.email == email &&
      other.pass == pass;
  }

  @override
  int get hashCode => name.hashCode ^ email.hashCode ^ pass.hashCode;
}
