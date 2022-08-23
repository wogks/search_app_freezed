import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:search_app_freezed/ui/image_search_screen.dart';
import 'package:search_app_freezed/ui/image_search_view_model.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => ImageSearchViewModel(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ImageSearchScreen(),
    );
  }
}
