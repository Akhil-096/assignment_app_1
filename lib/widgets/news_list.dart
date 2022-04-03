import 'package:assignment_app_1/providers/news_provider.dart';
import 'package:assignment_app_1/widgets/news_item.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class NewsList extends StatelessWidget {
  const NewsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final newsData = Provider.of<NewsProvider>(context);
    final news = newsData.newsList;
    return ListView.builder(
        itemBuilder: (ctx, i) => ChangeNotifierProvider.value(
            value: news[i], child: const NewsItem()),
        itemCount: news.length);
  }
}
