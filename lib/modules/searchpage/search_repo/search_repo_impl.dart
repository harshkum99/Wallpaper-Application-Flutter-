//import 'dart:html';

import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:wallpaper_app_ii/data/remote/api_services.dart';

import 'package:wallpaper_app_ii/modules/homepage/homepage_repo/homepage_repo.dart';
import 'package:wallpaper_app_ii/modules/homepage/model/photomodel.dart';
import 'package:wallpaper_app_ii/modules/searchpage/model/searchmodel.dart';
import 'package:wallpaper_app_ii/modules/searchpage/search_repo/search_repo.dart';

class SearchPageRepoImpl extends SearchPageRepo {
  //dynamic query;
  //List<SearchModel> searchresults = new List.empty(growable: true);
  ApiService apiService = ApiService();
  @override
  Future<SearchModel?> getPhotosFromRepo(String query) async {
    // debugPrint("Photos repo$query");
    dynamic response = await apiService.getSearchWallpapers(query);
    if (response != null) {
      debugPrint("Photos repo$response");
      //return SearchModel.fromJson(response);
      return searchModelFromJson(response);
    }
  }
}
