// ignore_for_file: public_member_api_docs, sort_constructors_first, non_constant_identifier_names
import 'package:universo_def/app/modules/models/user_model.dart';

abstract class MomModel extends UserModel {
  UserModel({name, email, pass, registration});

  String? phone;
  String? cpf;
  String? cep;
  MomModel({
    this.phone,
    this.cpf,
    this.cep,
  });

  @override
  String toString() => 'MomModel(phone: $phone, cpf: $cpf, cep: $cep)';

  @override
  bool operator ==(covariant MomModel other) {
    if (identical(this, other)) return true;
  
    return 
      other.phone == phone &&
      other.cpf == cpf &&
      other.cep == cep;
  }

  @override
  int get hashCode => phone.hashCode ^ cpf.hashCode ^ cep.hashCode;
}
