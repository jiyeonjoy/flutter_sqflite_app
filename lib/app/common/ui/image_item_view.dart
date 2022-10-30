import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_jab_app/app/common/config/r.dart';
import 'package:flutter_jab_app/app/common/ui/edge_insets.dart';
import 'package:flutter_jab_app/app/common/ui/touch_well.dart';
import 'package:flutter_jab_app/data/dto/response/search/search_image_data_dto.dart';
import 'package:intl/intl.dart';

class ImageItemView extends StatelessWidget {
  final SearchImageDataDto imageDataDto;
  const ImageItemView(this.imageDataDto, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        border: Border.all(
          color: R.color.black,
          width: 2
        ),
      ),
      padding: edgeInsets(all: 16, end: 8),
      margin: edgeInsets(vertical: 8),
      child: Row(
        children: [
          CachedNetworkImage(
            imageUrl: imageDataDto.thumbnail_url,
            width: 100,
            height: 100,
            errorWidget: (context, url, error) => const Icon(Icons.error),
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
            onTap: () {},
            circleBoard: true,
            child: Container(
              padding: edgeInsets(all: 8),
              child: Icon(
                Icons.star,
                color: R.color.black,
                size: 24.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}