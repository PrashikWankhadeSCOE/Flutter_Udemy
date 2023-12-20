import 'dart:convert';

import 'package:advisor/0_data/models/advice_model.dart';
import 'package:http/http.dart' as http;

abstract class AdviceRemoteDataSource {
  /// requests random advice from API
  /// then returns [AdviceModel] if successfull
  /// throws a server-Exception if status code is not 200
  Future<AdviceModel> getRandomAdviceFromAPI();
}

class AdviceRemoteDatasourceImpl implements AdviceRemoteDataSource {
  final client = http.Client();
  @override
  Future<AdviceModel> getRandomAdviceFromAPI() async {
    final response = await client.get(
      Uri.parse('https://api.flutter-community.com/api/v1/advice'),
      headers: {
        'content-type': 'application/json',
      },
    );
    final responseBody = json.decode(response.body);
    return AdviceModel.fromJson(responseBody);
  }
}
