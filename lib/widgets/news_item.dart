import 'package:assignment_app_1/models/news_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class NewsItem extends StatelessWidget {
  const NewsItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final news = Provider.of<NewsModel>(context, listen: false);
    return Card(
      child: ListTile(
        leading: CircleAvatar(
          backgroundImage: NetworkImage(news.images!.main.toString()),
        ),
        title: Text(news.name!.first!.isEmpty ? 'No Name' : news.name!.first.toString()),
      ),
    );
  }
}
