import 'package:flutter/cupertino.dart';
import 'package:get/get_rx/get_rx.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:wallpaper_app_ii/modules/searchpage/model/searchmodel.dart';
import 'package:wallpaper_app_ii/modules/searchpage/model/searchmodel2.dart';
import 'package:wallpaper_app_ii/modules/searchpage/search_repo/search_repo_impl.dart';

class SearchPAGE_VM extends GetxController {
  var isDataLoadCompleted = true.obs;
  SearchPageRepoImpl searchPageRepoImpl = new SearchPageRepoImpl();
  var searchWallList = <SearchModel2?>[].obs;
  @override
  void onInit() {
    fetchPictures();
    super.onInit();
  }

  void fetchPictures() async {
    searchWallList.clear;
    isDataLoadCompleted(true);
    final apiResult = await searchPageRepoImpl.getPhotosFromRepo();
    if (apiResult != null) {
      //debugPrint("Photos repo$apiResult");
      searchWallList.value = apiResult;
    }
    isDataLoadCompleted(false);
  }
}
