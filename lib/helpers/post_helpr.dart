import 'package:http/http.dart' as http;
import 'package:rest_api_json_/models/post_model.dart';

class PostHelper {
  Future<List<Post>?> getPost() async {
    var response =
        await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));

    
    if (response.statusCode == 200) {
      var data = response.body;
      return postFromJson(data);
    }
  }
}
