import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:one/core/contant/linkapi.dart';
import 'package:photo_view/photo_view.dart';
import 'package:photo_view/photo_view_gallery.dart';
import '../../../core/contant/My_Them.dart';

class Page_View_Img extends StatelessWidget {
  var data;

  Page_View_Img({required this.data});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: Colors.transparent,
          height: 300,
          child: PhotoViewGallery.builder(
            itemCount: data.length,
            onPageChanged: (index) {},
            loadingBuilder: (context, event) => Center(
              child: Container(
                width: 20.0,
                height: 20.0,
                child: CircularProgressIndicator(),
              ),
            ),
            scrollPhysics: BouncingScrollPhysics(),
            builder: (context, index) {
              return PhotoViewGalleryPageOptions(
                imageProvider: NetworkImage(
                  "${LinkApi.server}${data[index]["name_image"]}",
                ),
                initialScale: PhotoViewComputedScale.contained * 1,
                heroAttributes:
                    PhotoViewHeroAttributes(tag: data[index]["name_image"]),
              );
            },
          ),
        ),
      ],
    );
  }
}
