import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wallpaper_app_ii/data/remote/api_services.dart';
import 'package:wallpaper_app_ii/modules/detailpage/detailpage.dart';
import 'package:wallpaper_app_ii/modules/homepage/homepage_vm.dart';
import 'package:wallpaper_app_ii/modules/homepage/model/photomodel.dart';
import 'package:wallpaper_app_ii/widgets/appBar.dart';
import 'package:wallpaper_app_ii/widgets/searchBar.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomePageVM>(builder: (c) {
      return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: MyAppBar(),
        ),
        body: SingleChildScrollView(
            child: Column(
          children: [
            Container(padding: EdgeInsets.symmetric(horizontal: 10), child: SearchBar()),
            // Container(
            //   margin: EdgeInsets.symmetric(vertical: 20),
            //   child: SizedBox(
            //       height: 50,
            //       width: MediaQuery.of(context).size.width,
            //       // child: ListView.builder(
            //       //   scrollDirection: Axis.horizontal,
            //       //   itemCount: 2,
            //       //   itemBuilder: (context, index) => Category(),
            //       )),
            // ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              height: 600,
              child: RefreshIndicator(
                onRefresh: () async {
                  Get.to(HomePage());
                },
                child: GridView.builder(
                    physics: ClampingScrollPhysics(),
                    itemCount: c.trendingWallList.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(mainAxisExtent: 400, crossAxisCount: 2, crossAxisSpacing: 13, mainAxisSpacing: 10),
                    itemBuilder: ((context, index) => GridTile(
                          child: InkWell(
                            onTap: (() {
                              Get.to(DetailPage(imgUrl: c.trendingWallList[index]!.urls!.regular!));
                              //Navigator.push(context, MaterialPageRoute(builder: (context) => DetailPage(imgUrl: trendingWallList[index].urls!.regular!)));
                            }),
                            child: Hero(
                              tag: c.trendingWallList[index]!.urls!.small!,
                              child: Container(
                                height: 800,
                                width: 50,
                                decoration: BoxDecoration(color: Colors.amberAccent, borderRadius: BorderRadius.circular(20)),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: Image.network(height: 800, width: 50, fit: BoxFit.cover, c.trendingWallList[index]!.urls!.small!),
                                ),
                              ),
                            ),
                          ),
                        ))),
              ),
            )
          ],
        )),
      );
    });
  }
}
