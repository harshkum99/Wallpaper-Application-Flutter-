import 'package:wallpaper_app_ii/modules/homepage/model/photomodel.dart';
import 'package:wallpaper_app_ii/modules/searchpage/model/searchmodel.dart';
import 'package:wallpaper_app_ii/modules/searchpage/model/searchmodel2.dart';

abstract class SearchPageRepo {
  Future<List<SearchModel2?>> getPhotosFromRepo();
}
