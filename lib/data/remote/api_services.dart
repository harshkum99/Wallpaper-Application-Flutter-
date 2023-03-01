import 'dart:convert';
import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

import 'package:wallpaper_app_ii/data/remote/api_interface.dart';
import 'package:wallpaper_app_ii/modules/homepage/model/photomodel.dart';
//import 'api_interface.dart';

class ApiService extends ApiInterface {
  // static List<PhotoModel> trendingWallpapers = [];
  // static List<PhotoModel> searchWallpapersList = [];
  //static List<CategoryModel> cateogryModelList = [];

  @override
  //    Future<List<PhotoModel>> getPhotos() async {
  //   var client = http.Client();
  //   dynamic responseJson;

  //   final response = await client.get(Uri.parse(ApiInterface.apiUrl));

  //   responseJson = returnResponse(response);
  //   return responseJson;

  // }

  // dynamic returnResponse(http.Response response) {
  //   if (response.statusCode == 200) {
  //     dynamic responseJson = jsonDecode(response.body);
  //     return responseJson;
  //   }
  // }

  Future getTrendingWallpapers() async {
    final response = await http.get(Uri.parse(ApiInterface.apiUrl));
    if (response.statusCode == 200) {
      var jsonData = response.body;
      return (jsonData);
    } else {
      throw Exception('Error Fetching');
    }
  }

  @override
  Future? getSearchWallpapers(String query) async {
    //debugPrint("Photos repo$query");
    final sresponse = await http.get(Uri.parse("https://api.unsplash.com/search/photos?page=1&query=$query&client_id=vLg_xPb3nzDhGz57hy8X8YKXOHD5pvhA2cBjBX2OZ8s"));
    // ignore: avoid_print
    //print(sresponse.body);
    var jsonData = sresponse.body;
    return (jsonData);
    // TODO: implement getSearchWallpapers
    throw UnimplementedError();
  }
}

// Future getSearchWallpapers(String query) async {
//   final sresponse = await http.get(Uri.parse("https://api.unsplash.com/search/photos?page=1&query=$query&client_id=vLg_xPb3nzDhGz57hy8X8YKXOHD5pvhA2cBjBX2OZ8s"));
//   // ignore: avoid_print
//   print(sresponse.body);
//   var jsonData = sresponse.body;
//   return (jsonData);
// }

  // List<CategoryModel> getCategoriesList() {
  //   List<CategoryModel> categoryModelList = new List.empty(growable: true);
  //   CategoryModel categoryModel = new CategoryModel();

  //   categoryModel.catUrl = "https://api.unsplash.com/search/photos?page=1&query=streetart&client_id=vLg_xPb3nzDhGz57hy8X8YKXOHD5pvhA2cBjBX2OZ8s";
  //   categoryModel.catName = "Street Art";
  //   categoryModelList.add(categoryModel);
  //   categoryModel = new CategoryModel();

  //   //
  //   categoryModel.catUrl = "https://api.unsplash.com/search/photos?page=1&query=wildlife&client_id=vLg_xPb3nzDhGz57hy8X8YKXOHD5pvhA2cBjBX2OZ8s";
  //   categoryModel.catName = "Wild Life";
  //   categoryModelList.add(categoryModel);
  //   categoryModel = new CategoryModel();

  //   //
  //   categoryModel.catUrl = "https://api.unsplash.com/search/photos?page=1&query=nature&client_id=vLg_xPb3nzDhGz57hy8X8YKXOHD5pvhA2cBjBX2OZ8s";
  //   categoryModel.catName = "Nature";
  //   categoryModelList.add(categoryModel);
  //   categoryModel = new CategoryModel();

  //   //
  //   categoryModel.catUrl = "https://api.unsplash.com/search/photos?page=1&query=city&client_id=vLg_xPb3nzDhGz57hy8X8YKXOHD5pvhA2cBjBX2OZ8s";
  //   categoryModel.catName = "City";
  //   categoryModelList.add(categoryModel);
  //   categoryModel = new CategoryModel();

  //   //
  //   categoryModel.catUrl = "https://api.unsplash.com/search/photos?page=1&query=motivation&client_id=vLg_xPb3nzDhGz57hy8X8YKXOHD5pvhA2cBjBX2OZ8s";
  //   categoryModel.catName = "Motivation";

  //   categoryModelList.add(categoryModel);
  //   categoryModel = new CategoryModel();

  //   //
  //   categoryModel.catUrl = "https://api.unsplash.com/search/photos?page=1&query=bikes&client_id=vLg_xPb3nzDhGz57hy8X8YKXOHD5pvhA2cBjBX2OZ8s";
  //   categoryModel.catName = "Bikes";
  //   categoryModelList.add(categoryModel);
  //   categoryModel = new CategoryModel();

  //   //
  //   categoryModel.catUrl = "https://api.unsplash.com/search/photos?page=1&query=cars&client_id=vLg_xPb3nzDhGz57hy8X8YKXOHD5pvhA2cBjBX2OZ8s";
  //   categoryModel.catName = "Cars";
  //   categoryModelList.add(categoryModel);
  //   categoryModel = new CategoryModel();

  //   return categoryModelList;
  // }

  // @override
  // Future? getPhotos() {
  //   // TODO: implement getPhotos
  //   throw UnimplementedError();
  // }

