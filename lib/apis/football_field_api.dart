import 'dart:convert';

import 'package:flutter_with_api/models/football_field.dart';
import 'package:http/http.dart' as http;
import 'dart:core';

class FootballFieldAPI{
  final String BASE_URL="https://localhost:44310/api/FootballField";
  Future<List<FootballField>> findAll() async{
    var response = await http.get(Uri.parse("${BASE_URL}/GetAllFootballFields"));
    print(response.statusCode);
    if(response.statusCode==200){
      List<dynamic> body= jsonDecode(response.body);
      return body.map((footballField) => FootballField.fromJson(footballField)).toList();
    }else{
      throw Exception("Failed to upload football field list");
    }
  }
}