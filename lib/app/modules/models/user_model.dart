// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class UserModel {
  
  String? name;
  
  String? email;

  String? pass;

  String? registration;

  UserModel({
    this.name,
    this.email,
    this.pass,
    this.registration
  });

  UserModel copyWith({
    String? name,
    String? email,
    String? pass,
    String? registration
  }) {
    return UserModel(
      name: name ?? this.name,
      email: email ?? this.email,
      pass: pass ?? this.pass,
      registration: registration ?? this.registration
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'email': email,
      'pass': pass,
      'reg': registration
    };
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      name: map['name'],
      email: map['email'],
      pass: map['pass'],
      registration: map['reg']
    );
  }

  String toJson() => json.encode(toMap());

  factory UserModel.fromJson(String source) => UserModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'UserModel(name: $name, email: $email, pass: $pass, reg: $registration)';

  @override
  bool operator ==(covariant UserModel other) {
    if (identical(this, other)) return true;
  
    return 
      other.name == name &&
      other.email == email &&
      other.pass == pass &&
      other.registration == registration;
  }

  @override
  int get hashCode => name.hashCode ^ email.hashCode ^ pass.hashCode ^ registration.hashCode;
}
