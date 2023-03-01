// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
//import 'package:wallpaper_app/views/searchpage.dart';
import 'package:wallpaper_app_ii/modules/searchpage/search_view.dart';
import 'package:wallpaper_app_ii/modules/searchpage/search_vm.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    //final searchcontroller = TextEditingController();
    TextEditingController searchcontroller = new TextEditingController();
    //searchcontroller.text = 'Search';
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30),
      decoration: BoxDecoration(color: Colors.black26, border: Border.all(color: Colors.black), borderRadius: BorderRadius.circular(25)),
      child: Row(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          Expanded(
            child: TextField(
              controller: searchcontroller,
              decoration: InputDecoration(hintText: "Search Wallpapers", errorBorder: InputBorder.none, focusedBorder: InputBorder.none, focusedErrorBorder: InputBorder.none, disabledBorder: InputBorder.none, enabledBorder: InputBorder.none, border: InputBorder.none),
            ),
          ),
          InkWell(
              onTap: () {
                Get.to(() => SearchPage(query: searchcontroller.text));
              },
              child: Container(child: Icon(Icons.search))),
        ],
      ),
    );
  }
}
