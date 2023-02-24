//import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:wallpaper_app_ii/data/remote/api_services.dart';

import 'package:wallpaper_app_ii/modules/homepage/homepage_repo/homepage_repo.dart';
import 'package:wallpaper_app_ii/modules/homepage/model/photomodel.dart';

class HomePageRepoImpl extends HomePageRepo {
  ApiService apiService = ApiService();
  @override
  Future<List<PhotoModel?>> getPhotosFromRepo() async {
    dynamic response = await apiService.getTrendingWallpapers();
    //debugPrint("Photos repo$response");
    final jsonData = photoModelFromJson(response);
    return jsonData;
  }
}
