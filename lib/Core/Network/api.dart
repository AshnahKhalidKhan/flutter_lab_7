import 'dart:convert';
import 'package:flutter_lab_7/Core/Model/user_model.dart';
import 'package:http/http.dart' as http;

class ApiClient
{
  ApiClient(this._client);

  final http.Client _client;

  Future<User> getUser() async 
  {
    final http.Response response = await _client.get("https://jsonplaceholder.typicode.com/users" as Uri);
    final parsed = jsonDecode(response.body)[0];
    final user = User.fromJson(parsed);
    return user;
  }
}