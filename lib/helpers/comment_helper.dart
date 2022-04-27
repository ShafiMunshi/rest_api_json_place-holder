import 'package:http/http.dart' as http;
import 'package:rest_api_json_/models/comment_model.dart';

class CommentHelper {
  Future<List<Comment>?> getComment() async {
    var response = await http
        .get(Uri.parse('https://jsonplaceholder.typicode.com/comments'));
    var data = response.body;

    if (response.statusCode == 200) {
      return commentFromJson(data);
    }
  }
}
