// ignore_for_file: unnecessary_this

import 'package:get/get.dart';
import 'package:get/state_manager.dart';
import 'package:wallpaper_app_ii/data/remote/api_services.dart';
import 'package:wallpaper_app_ii/modules/homepage/homepage_repo/homepage_repo_impl.dart';
import 'package:wallpaper_app_ii/modules/homepage/model/photomodel.dart';

class HomePageVM extends GetxController {
  var isDataLoadCompleted = true.obs;
  HomePageRepoImpl homePageRepoImpl = new HomePageRepoImpl();
  var trendingWallList = <PhotoModel?>[].obs;
  @override
  void onInit() {
    fetchPictures();
    super.onInit();
  }

  void fetchPictures() async {
    isDataLoadCompleted(true);
    final apiResult = await homePageRepoImpl.getPhotosFromRepo();
    if (apiResult != null) {
      trendingWallList.value = apiResult;
    }
    isDataLoadCompleted(false);
  }
}
