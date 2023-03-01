import 'package:wallpaper_app_ii/modules/homepage/model/photomodel.dart';
import 'package:wallpaper_app_ii/modules/searchpage/model/searchmodel.dart';

abstract class SearchPageRepo {
  Future<SearchModel?> getPhotosFromRepo(String query);
}
