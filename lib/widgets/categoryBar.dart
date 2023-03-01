// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:wallpaper_app_ii/modules/searchpage/search_view.dart';

class Categories extends StatelessWidget {
  const Categories({super.key});
  @override
  Widget build(BuildContext context) {
    List<String> categories = [
      "Street Art",
      "Wild Life",
      "Nature",
      "City",
      "Cars",
      "Bikes",
      "Rail",
      "Anime"
    ];
    int i = 0;
    return Container(
      margin: const EdgeInsets.only(right: 10),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Card(
          child: ListTile(
        onTap: () {
          Get.to(() => SearchPage(query: categories[i]));
          i++;
        },
        title: Center(child: (Text(categories[i]))),
      )),
    );
    //         InkWell(
    //             onTap: () {
    //               Get.to(() => SearchPage(query: "wildlife"));
    //             },
    //             child: Text("Wild Life")),
    //         InkWell(
    //             onTap: () {
    //               Get.to(() => SearchPage(query: "nature"));
    //             },
    //             child: Text("Nature")),
    //         InkWell(
    //             onTap: () {
    //               Get.to(() => SearchPage(query: "city"));
    //             },
    //             child: Text("City")),
    //         InkWell(
    //             onTap: () {
    //               Get.to(() => SearchPage(query: "car"));
    //             },
    //             child: Text("Cars")),
    //         InkWell(
    //             onTap: () {
    //               Get.to(() => SearchPage(query: "bike"));
    //             },
    //             child: Text("Bikes")),
    //         InkWell(
    //             onTap: () {
    //               Get.to(() => SearchPage(query: "rail"));
    //             },
    //             child: Text("Rail")),
    //         InkWell(
    //             onTap: () {
    //               Get.to(() => SearchPage(query: "anime"));
    //             },
    //             child: Text("Anime")),
    //       ],
    //     ),
    //   ),
  }
}
