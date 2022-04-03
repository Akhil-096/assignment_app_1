import 'package:assignment_app_1/providers/news_provider.dart';
import 'package:assignment_app_1/screens/news_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (ctx) => NewsProvider(),
      child: MaterialApp(
        title: 'News',
        theme: ThemeData(
            colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.red)
                .copyWith(secondary: Colors.amber)),
        home: const NewsScreen(),
      ),
    );
  }
}
