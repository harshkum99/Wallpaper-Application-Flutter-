import 'package:get/get.dart';
import 'package:wallpaper_app_ii/modules/homepage/homepage_vm.dart';
import 'package:wallpaper_app_ii/modules/searchpage/search_vm.dart';

class DataBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(HomePageVM());
    Get.put(SearchPAGE_VM());
  }
}
