//import 'dart:html';

import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:wallpaper_app_ii/data/remote/api_services.dart';

import 'package:wallpaper_app_ii/modules/homepage/homepage_repo/homepage_repo.dart';
import 'package:wallpaper_app_ii/modules/homepage/model/photomodel.dart';
import 'package:wallpaper_app_ii/modules/searchpage/model/searchmodel.dart';
import 'package:wallpaper_app_ii/modules/searchpage/model/searchmodel2.dart';
import 'package:wallpaper_app_ii/modules/searchpage/search_repo/search_repo.dart';

class SearchPageRepoImpl extends SearchPageRepo {
  dynamic query;
  List<SearchModel2> searchresults = new List.empty(growable: true);
  ApiService apiService = ApiService();
  @override
  Future<List<SearchModel2?>> getPhotosFromRepo() async {
    dynamic response = await apiService.getSearchWallpapers();
    //debugPrint("Photos repo$response");
    Map<String, dynamic> jsonData = jsonDecode(response);

    jsonData["results"].forEach((element) {
      //debugPrint("SEARCH resdata$element");
      // ignore: unnecessary_new
      SearchModel2 searchModel = new SearchModel2();
      searchModel = SearchModel2.fromMap(element);
      //debugPrint("SEARCH RESJSON$searchModel");
      searchresults.add(searchModel);
      //debugPrint("SEARCH LIST$searchresults");
    });
    return (searchresults);
  }
}
