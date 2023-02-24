// ignore_for_file: prefer_const_constructors

// import 'package:get/get.dart';
// import 'package:wallpaper_app/utils/bindings.dart';
// import 'package:wallpaper_app/views/category_page.dart';
// import 'package:wallpaper_app/views/detail_page.dart';
// import 'package:wallpaper_app/views/homepage.dart';
// import 'package:wallpaper_app/views/searchpage.dart';

import 'package:get/get.dart';
import 'package:wallpaper_app_ii/modules/detailpage/detailpage.dart';
import 'package:wallpaper_app_ii/modules/homepage/homepage_view.dart';
import 'package:wallpaper_app_ii/modules/searchpage/search_view.dart';
import 'package:wallpaper_app_ii/utils/bindings.dart';

class AppRoutes {
  static const home = "/home";
  static const category = "/category";
  static const detail = "/detailpage";
  static const search = "/searchpage";

  static final getPages = [
    GetPage(name: home, page: () => HomePage(), binding: DataBinding()),
    // GetPage(name: category, page: () => CategoryPage(), binding: DataBinding()),
    GetPage(
        name: detail,
        page: () => DetailPage(
              imgUrl: '',
            ),
        binding: DataBinding()),
    GetPage(
        name: search,
        page: () => SearchPage(
              query: null,
            ),
        binding: DataBinding()),
  ];
}
