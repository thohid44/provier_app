import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

import '../model/ApiServiceModel.dart';

class ApiService extends ChangeNotifier {
  var client = http.Client();
  List<ApiServicemodel> posts = [];
  var baseUrl = "jsonplaceholder.typicode.com";
  var path = "posts";

  Future<List<ApiServicemodel>> getData() async {
    try {
      var request = http.Request(
          'GET', Uri.parse('https://jsonplaceholder.typicode.com/posts'));

      http.StreamedResponse response = await request.send();

      if (response.statusCode == 200) {
        var rawData = await response.stream.bytesToString();
        List<dynamic> data = jsonDecode(rawData);
        data.forEach((element) {
          ApiServicemodel model = ApiServicemodel.fromJson(element);
          posts.add(model);
        });
        return posts;
      } else {
        print(response.reasonPhrase);
        return [];
      }
    } catch (e) {
      throw e;
    }
  }
}
