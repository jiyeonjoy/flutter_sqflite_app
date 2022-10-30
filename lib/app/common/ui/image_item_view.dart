import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_jab_app/app/common/app_pages.dart';
import 'package:flutter_jab_app/app/common/config/r.dart';
import 'package:flutter_jab_app/app/common/constants.dart';
import 'package:flutter_jab_app/app/common/ui/edge_insets.dart';
import 'package:flutter_jab_app/app/common/ui/touch_well.dart';
import 'package:flutter_jab_app/app/root/controller/root_page_controller.dart';
import 'package:flutter_jab_app/data/dto/common/favorite_image_data.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class ImageItemView extends StatelessWidget {
  final FavoriteImageData imageDataDto;
  const ImageItemView(this.imageDataDto, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: edgeInsets(vertical: 8),
      child: GestureDetector(
        onTap: () {
          Get.toNamed(
            AppRoutes.detailPage,
            arguments: {
              AppConstants.IMAGE_URL: imageDataDto.image_url,
              AppConstants.IMAGE_SITE_NAME: imageDataDto.display_sitename,
            }
          );
        },
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            border: Border.all(
              color: R.color.black,
              width: 2
            ),
          ),
          padding: edgeInsets(all: 16, end: 8),
          child: Row(
            children: [
              Hero(
                tag: imageDataDto.image_url,
                child: CachedNetworkImage(
                  imageUrl: imageDataDto.thumbnail_url,
                  width: 100,
                  height: 100,
                  errorWidget: (context, url, error) => const Icon(Icons.error),
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    if (imageDataDto.display_sitename.isNotEmpty)...[
                      Text(
                          '출처 : ${imageDataDto.display_sitename}'
                      ),
                    ],
                    if (imageDataDto.doc_url.isNotEmpty) ...[
                      const SizedBox(height: 8),
                      Text(
                          '링크 : ${imageDataDto.doc_url}'
                      ),
                    ],
                    if (DateTime.tryParse(imageDataDto.datetime) != null)...[
                      const SizedBox(height: 8),
                      Text(
                          '날짜 : ${DateFormat.yMMMd().format(DateTime.parse(imageDataDto.datetime))}'),
                    ],
                  ],
                ),
              ),
              const SizedBox(width: 16),
              TouchWell(
                onTap: () {
                  RootPageController.to.changeFavoriteList(imageDataDto);
                },
                circleBoard: true,
                child: Container(
                  padding: edgeInsets(all: 8),
                  child: imageDataDto.isFavorite ? Icon(
                    Icons.star,
                    color: R.color.black,
                    size: 24.0,
                  ) : Icon(
                    Icons.star_border,
                    color: R.color.black,
                    size: 24.0,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
