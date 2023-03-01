import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:get/route_manager.dart';
import 'package:wallpaper_app_ii/modules/detailpage/detailpage.dart';
import 'package:wallpaper_app_ii/modules/searchpage/search_vm.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key, required this.query});

  final String query;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SearchPAGE_VM>(builder: (c) {
      // return Container(
      //   child: SizedBox(child: Text("HELLO JI")),
      // );
      c.fetchPictures(query);
      return GridView.builder(
          physics: ClampingScrollPhysics(),
          itemCount: c.searchWallList.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(mainAxisExtent: 400, crossAxisCount: 2, crossAxisSpacing: 13, mainAxisSpacing: 10),
          itemBuilder: ((context, index) => GridTile(
                child: Material(
                  child: InkWell(
                      onTap: (() {
                        Get.to(DetailPage(imgUrl: c.searchWallList[index]!.urls!.regular!));
                      }),
                      child: Hero(
                        tag: c.searchWallList[index]!.urls!.small!,
                        child: Container(
                          height: 800,
                          width: 50,
                          decoration: BoxDecoration(color: Colors.amberAccent, borderRadius: BorderRadius.circular(20)),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.network(height: 800, width: 50, fit: BoxFit.cover, c.searchWallList[index]!.urls!.small!),
                          ),
                        ),
                      )),
                ),
              )));
    });
  }
}
