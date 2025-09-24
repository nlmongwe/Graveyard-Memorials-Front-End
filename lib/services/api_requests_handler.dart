import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:web_project/models/grave.dart';
import '../models/find_a_grave_search_input.dart';

class ApiRequestsHandler {
  final String _base = "https://localhost:7087";

  Future<List<Grave>> findAGraveSearch(FindAGraveSearchInput input) async {
    String path = "/api/Graves/FindAGrave";
    final url = Uri.parse("$_base$path");
    try {
      final response = await http.post(url,
          headers: <String, String>{
            'Content-type': 'application/json',
            "Accept": "application/json",
          },
          body: jsonEncode(input.toJson()));
      if (response.statusCode == 200) {
        List<dynamic> jsonData = jsonDecode(response.body);

        List<Grave> graves =
            jsonData.map((json) => Grave.fromJson(json)).toList();
        print("not empty: ${graves[0].graveNumber}");
        return graves;
      }
      return List<Grave>.empty();
    } catch (e) {
      print("error on get\n$e");
      return List<Grave>.empty();
    }
  }
}
