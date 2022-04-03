import 'dart:convert';

import 'package:assignment_app_1/models/news_model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class NewsProvider with ChangeNotifier {
  List<NewsModel> _newsList = [];

  List<NewsModel> get newsList {
    return [..._newsList];
  }

  Future<void> getNews() async {
    final url = Uri.parse('https://api.sampleapis.com/futurama/characters');
    final response = await http.get(url);

    if (response.statusCode == 200) {
      var newsData = json.decode(response.body);
      newsData.forEach((e) => _newsList.add(NewsModel.fromJson(e)));
    } else {
      throw Exception('Failed to load post');
    }
    notifyListeners();
  }
}
