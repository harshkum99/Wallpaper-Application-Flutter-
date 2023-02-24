// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wallpaper_app_ii/modules/categorypage/category_view.dart';

class Category extends StatelessWidget {
  String categoryName;
  String categoryImgsrc;
  Category({super.key, required this.categoryImgsrc, required this.categoryName});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        //Get.to(page);
        Navigator.push(context, MaterialPageRoute(builder: (context) => CategoryPage(catImgUrl: categoryImgsrc, catName: categoryName)));
      },
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 7),
        child: InkWell(
          child: Stack(
            children: [
              //ClipRRect(borderRadius: BorderRadius.circular(12), child: Image.network(height: 50, width: 100, fit: BoxFit.cover, categoryImgsrc)),
              Container(height: 50, width: 100, decoration: BoxDecoration(color: Color.fromARGB(255, 37, 17, 91), borderRadius: BorderRadius.circular(12))),
              Container(
                height: 50,
                width: 100,
                alignment: Alignment.center,
                child: Text(
                  categoryName,
                  style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
                ),
              )
            ],
          ),
          // onTap: () {
          //   Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Category2()));
          // },
        ),
      ),
    );
  }
}
