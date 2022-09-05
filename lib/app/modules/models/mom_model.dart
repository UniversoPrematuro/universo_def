// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'user_model.dart';

abstract class MomModel extends UserModel {
  UserModel({name, email, pass, registration});

  String? cpf;
  String? phone;
  String? city;
  String? state;
  String? cep;
  String? address;
  String? neighborhood;
  String? country;
  
  MomModel({
    this.cpf,
    this.phone,
    this.city,
    this.state,
    this.cep,
    this.address,
    this.neighborhood,
  });
  

  @override
  String toString() {
    return 'MomModel(cpf: $cpf, phone: $phone, city: $city, state: $state, cep: $cep, address: $address, neighborhood: $neighborhood)';
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
      other.address == address &&
      other.neighborhood == neighborhood;
  }

  @override
  int get hashCode {
    return cpf.hashCode ^
      phone.hashCode ^
      city.hashCode ^
      state.hashCode ^
      cep.hashCode ^
      address.hashCode ^
      neighborhood.hashCode;
  }
}
