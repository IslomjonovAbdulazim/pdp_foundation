import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pdp_foundation/utils/extenstions/color_extension.dart';

import '../../utils/constants/api_constants.dart';

class CachedNetworkWidget extends StatelessWidget {
  late String imageUrl;
  final double width;
  final double height;

  CachedNetworkWidget(this.imageUrl,
      {super.key, this.width = 100, this.height = 100});

  @override
  Widget build(BuildContext context) {
    if (imageUrl.startsWith("http") == false) {
      imageUrl =
          ApiConstants.baseURL.substring(0, ApiConstants.baseURL.length - 1) +
              imageUrl;
    }
    return imageUrl.endsWith(".svg")
        ? SvgPicture.network(
            imageUrl,
            width: width,
            height: height,
            placeholderBuilder: (context) => CircularProgressIndicator.adaptive(
              backgroundColor: context.textPrimary,
            ),
          )
        : CachedNetworkImage(
            imageUrl: imageUrl,
            width: width,
            height: height,
            placeholder: (context, url) => CircularProgressIndicator.adaptive(
              backgroundColor: context.textPrimary,
            ),
            errorWidget: (context, url, error) => const Icon(
              Icons.error,
            ),
          );
  }
}
