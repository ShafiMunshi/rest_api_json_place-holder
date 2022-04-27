import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:rest_api_json_/models/photo_model.dart';

class PhotoHelper {
  Future<List<Photo>?> getPhoto() async {
    var response = await http
        .get(Uri.parse('https://jsonplaceholder.typicode.com/photos'));
    var data = response.body;
    if (response.statusCode == 200) {
      return photoFromJson(data);
    }
  }
}
