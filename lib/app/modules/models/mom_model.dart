import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
// import 'user_model.dart';
class MomModel {
  // UserModel({name, email, pass, registration});

  String? cpf;
  String? phone;
  String? city;
  String? state;
  String? cep;
  String? street;
  String? neighborhood;
  String? ibge;
  
  MomModel({
    this.cpf,
    this.phone,
    this.city,
    this.state,
    this.cep,
    this.street,
    this.neighborhood,
    this.ibge,
  });
  

  @override
  String toString() {
    return 'MomModel(cpf: $cpf, phone: $phone, city: $city, state: $state, cep: $cep, street: $street, neighborhood: $neighborhood, ibge: $ibge)';
  }

  @override
  bool operator ==(covariant MomModel other) {
    if (identical(this, other)) return true;
  
    return 
      other.cpf == cpf &&
      other.phone == phone &&
      other.city == city &&
      other.state == state &&
      other.cep == cep &&
      other.street == street &&
      other.neighborhood == neighborhood &&
      other.ibge == ibge;
  }

  @override
  int get hashCode {
    return cpf.hashCode ^
      phone.hashCode ^
      city.hashCode ^
      state.hashCode ^
      cep.hashCode ^
      street.hashCode ^
      neighborhood.hashCode ^
      ibge.hashCode;
  }

  MomModel copyWith({
    String? cpf,
    String? phone,
    String? city,
    String? state,
    String? cep,
    String? street,
    String? neighborhood,
    String? ibge,
  }) {
    return MomModel(
      cpf: cpf ?? this.cpf,
      phone: phone ?? this.phone,
      city: city ?? this.city,
      state: state ?? this.state,
      cep: cep ?? this.cep,
      street: street ?? this.street,
      neighborhood: neighborhood ?? this.neighborhood,
      ibge: ibge ?? this.ibge,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cpf': cpf,
      'phone': phone,
      'city': city,
      'state': state,
      'cep': cep,
      'street': street,
      'neighborhood': neighborhood,
      'ibge': ibge,
    };
  }

  factory MomModel.fromMap(Map<String, dynamic> map) {
    return MomModel(
      cpf: map['cpf'] != null ? map['cpf'] as String : null,
      phone: map['phone'] != null ? map['phone'] as String : null,
      city: map['city'] != null ? map['city'] as String : null,
      state: map['state'] != null ? map['state'] as String : null,
      cep: map['cep'] != null ? map['cep'] as String : null,
      street: map['street'] != null ? map['street'] as String : null,
      neighborhood: map['neighborhood'] != null ? map['neighborhood'] as String : null,
      ibge: map['ibge'] != null ? map['ibge'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory MomModel.fromJson(String source) => MomModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
