import 'package:wallpaper_app_ii/modules/homepage/model/photomodel.dart';

abstract class HomePageRepo {
  Future<List<PhotoModel?>> getPhotosFromRepo();
}
