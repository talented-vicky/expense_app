import 'package:http/http.dart' as http;

import '../models/posts.dart';

class RemoteService {
  Future<List<DailyPost>?> getPost() async {
    var client = http.Client();
    var uri = Uri.parse("https://jsonplaceholder.typicode.com/posts");

    var response = await client.get(uri);

    var jsonBody = response.body;
    return dailyPostFromJson(jsonBody);
    // if (response.statusCode == 200) {
    //   return dailyPostFromJson(jsonBody);
    // }
  }
}
