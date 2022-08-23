import 'package:flutter/material.dart';
import 'package:search_app_freezed/data/data_source/api.dart';
import 'package:search_app_freezed/data/model/photo.dart';

class ImageSearchViewModel extends ChangeNotifier {
  final _pictureApi = PhotoApi();

  List<photo> images = [];

  bool isLoading = false;

  Future<void> fetchImages(String query) async {
    isLoading = true;
    notifyListeners();

    images = await _pictureApi.getImages(query);
    notifyListeners();

    isLoading = false;
    notifyListeners();
  }
}