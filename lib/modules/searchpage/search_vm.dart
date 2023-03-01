import 'package:flutter/cupertino.dart';
import 'package:get/get_rx/get_rx.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:wallpaper_app_ii/modules/searchpage/model/searchmodel.dart';
import 'package:wallpaper_app_ii/modules/searchpage/search_repo/search_repo_impl.dart';

class SearchPAGE_VM extends GetxController {
  var isDataLoadCompleted = true.obs;
  SearchPageRepoImpl searchPageRepoImpl = new SearchPageRepoImpl();
  ////var searchWallList = <SearchModel?>[].obs;
  List<Result?> searchWallList = List.empty(growable: true);
  @override
  // void onInit() {
  //   fetchPictures();
  //   super.onInit();
  // }

  void fetchPictures(String query) async {
    update();
    // if (searchWallList.isNotEmpty) {
    //   searchWallList.clear();
    // }
    //debugPrint("new data$searchWallList");
    isDataLoadCompleted(true);
    final apiResult = await searchPageRepoImpl.getPhotosFromRepo(query);
    if (apiResult != null) {
      //debugPrint("Photos superrr$apiResult");
      searchWallList.clear();
      searchWallList.addAll(apiResult.results!);
    }
    isDataLoadCompleted(false);
  }
}
