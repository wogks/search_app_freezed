import 'package:flutter/material.dart';

class ImageSearchScreen extends StatefulWidget {
  const ImageSearchScreen({Key? key}) : super(key: key);

  @override
  State<ImageSearchScreen> createState() => _ImageSearchScreenState();
}

class _ImageSearchScreenState extends State<ImageSearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('이미지 검색 앱',),
      ),
      body: Column(
        
      ),
    );
  }
}