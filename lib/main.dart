import 'package:flutter/material.dart';
import 'package:fluttertestingtutorial/new_service.dart';
import 'package:fluttertestingtutorial/news_change_notifier.dart';
import 'package:fluttertestingtutorial/news_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'News App',
      home: ChangeNotifierProvider(
        create: (_) => NewsChangeNotifier(NewsService()),
        child: NewsPage(),
      ),
    );
  }
}
