import 'package:flutter_modular/flutter_modular.dart';
import 'package:http/http.dart' as http;
import 'package:universo_def/app/modules/models/result_cep.dart';

import '../profile/edit/edit_store.dart';


class ViaCepService {
  final EditStore edit = Modular.get();
  static Future<ResultCep> fetchCep({required String cep}) async {
    final response = await http.get(Uri.https('viacep.com.br','/ws/$cep/json/'));
    if (response.statusCode == 200) {
      return ResultCep.fromJson(response.body);
    } else {
      throw Exception('invalid response: ${response.body}');
    }
  }
}