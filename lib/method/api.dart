import 'dart:convert';
import 'package:http/http.dart' as http;

class API {
  postRequest({
    required String route,
    required Map<String, String> data,
  }) async {
    const String apiUrl = 'http://ed-operating.at.ply.gg:38062/api/auth';

    String url = apiUrl + route;

    return await http.post(
      Uri.parse(url),
      body: jsonEncode(data),
      headers: _header(),
    );
  }

  _header() => {
        'Content-type': 'application/json',
        'Accept': 'application/json',
      };
}