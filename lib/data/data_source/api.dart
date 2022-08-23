import 'dart:convert';

import 'package:search_app_freezed/data/model/photo.dart';
import 'package:http/http.dart' as http;

class PhotoApi {
  Future<List<photo>> getImages (String query) async {
    Uri url = Uri.parse(
      'https://pixabay.com/api/?key=10711147-dc41758b93b263957026bdadb&q=$query&image_type=photo'
    );
    http.Response response = await http.get(url);

    String jsonString = response.body;

    Map<String, dynamic> json = jsonDecode(jsonString);

    List<dynamic> hits = json['hits'];

    List<photo> items = hits.map((e) => photo.fromJson(e)).toList();

    return items;
  }
}