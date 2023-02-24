import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:get/route_manager.dart';
import 'package:wallpaper_app_ii/modules/detailpage/detailpage.dart';
import 'package:wallpaper_app_ii/modules/searchpage/search_vm.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key, required query});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SearchPAGE_VM>(builder: (c) {
      // return Container(
      //   child: SizedBox(child: Text("HELLO JI")),
      // );
      return GridView.count(
        physics: ClampingScrollPhysics(),
        crossAxisCount: 2,
        childAspectRatio: 0.6,
        mainAxisSpacing: 6.0,
        crossAxisSpacing: 6.0,
        children: [
          c.searchWallList.map((element) {
            return GridTile(
              child: Material(
                child: InkWell(
                  onTap: (() {
                    Get.to(DetailPage(imgUrl: element!.urls!.full));
                  }),
                ),
              ),
            );
          }).toList(),
        ],
      ); //GridView.builder(
      //     physics: ClampingScrollPhysics(),
      //     itemCount: c.searchWallList.length,
      //     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(mainAxisExtent: 400, crossAxisCount: 2, crossAxisSpacing: 13, mainAxisSpacing: 10),
      //     itemBuilder: ((context, index) => GridTile(
      //           child: Material(
      //             child: InkWell(
      //               onTap: (() {
      //                 Get.to(DetailPage(imgUrl: c.searchWallList[index]!.urls!.full));
      //               }),
      //             ),
      //           ),
      //         )));
    });
  }
}
