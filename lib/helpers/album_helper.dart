import 'package:rest_api_json_/models/album_model.dart';
import 'package:http/http.dart' as http;

class AlbumHelper {
  Future<List<Album>?> getAlbum() async {
    var response = await http
        .get(Uri.parse('https://jsonplaceholder.typicode.com/albums'));
    var data = response.body;
    if (response.statusCode == 200) {
      return albumFromJson(data);
    }
  }
}
