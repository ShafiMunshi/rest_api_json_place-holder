import 'package:http/http.dart' as http;
import 'package:rest_api_json_/models/user_model.dart';

class UserHelper {
  Future<List<User>?> getUser() async {
    var response =
        await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users'));

    var data = response.body;
    if (response.statusCode == 200) {
      return UserFromJson(data);
    }
  }
}
