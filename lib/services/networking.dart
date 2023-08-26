import 'package:http/http.dart' as http;
import 'dart:convert';

//fetching data from the net (API) by using http package - Networking
class NetworkHelper {
  NetworkHelper(this.url);
  final String url;

  Future getData() async {
    http.Response response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      String data = response.body;
      return jsonDecode(
          data); // decoding or fetching data from json formatted data by importing dart - convert
    } else {
      print('Failed to fetch data: ${response.statusCode}');
    }
  }
}
